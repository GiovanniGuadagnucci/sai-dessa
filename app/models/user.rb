class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :answers, dependent: :destroy
  validates :name, presence: true

  def current_phase
    case user_score
    when (0...SD['first_phase']['score']) then "first_phase"
    when (SD['first_phase']['score']...SD['second_phase']['score']) then "second_phase"
    when (SD['second_phase']['score']...SD['third_phase']['score']) then "third_phase"
    when (SD['third_phase']['score']...SD['fourth_phase']['score']) then "fourth_phase"
    end
  end

  def phase_not_started?
    score[current_phase].empty? || score[current_phase].reject { |cat| cat.include?('oath') }.values.all?(0)
  end

  def start_phase
    temp = score
    temp[current_phase] = (SD[current_phase]['categories'].map { |x| [x, 0] }).to_h
    update(score: temp)
  end

  def undone_categories
    categories = score[current_phase].reject do |category, value|
      ["#{current_phase}_oath", "#{current_phase}_oath_try"].include?(category) || value >= 80
    end
    categories.keys
  end

  def oath_score
    score[current_phase]["#{current_phase}_oath"]
  end

  def user_oath_count
    score[current_phase]["#{current_phase}_oath_try"]
  end

  def save_avg_score(category, phase)
    temp = score
    user_phase = SD.find { |_k, v| v['categories'].include?(category) }.first
    answers = Answer.joins(:question).where('questions.category = ? AND answers.user_id = ?', category, id)
    temp[phase]["#{phase}_oath_try"] = 1 if temp[phase]["#{phase}_oath_try"].zero?
    temp[phase]["#{phase}_oath_try"] = 3 if temp[phase]["#{phase}_oath_try"] == 2
    temp[user_phase][category] = categ_scores(answers).sum(&:to_i) / categ_scores(answers).size
    update(score: temp)
  end

  def last_chance
    temp = score
    temp[current_phase]["#{current_phase}_oath_try"] = 2
    update(score: temp)
  end

  def journey_ended?
    user_score == SD["fourth_phase"]["score"]
  end

  def user_score
    total_score = 0
    score.each do |_phase, categories|
      total_score += categories.reject { |category| category.include? "oath" }.count { |category| category[1] >= 80 }
    end
    total_score
  end

  private

  def categ_scores(answers)
    answers.map do |answer|
      right_ansr = answer.question.right_answer
      user_ansr = answer.user_answer
      unless user_ansr.zero?
        right_ansr == 1 ? ((user_ansr - right_ansr) * -20) + 100 : ((right_ansr - user_ansr) * -20) + 100
      end
    end
  end
end
