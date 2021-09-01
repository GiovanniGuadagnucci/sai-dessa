class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers
  validates :name, presence: true

  def current_phase
    case user_score
    when (0...SD['first_phase']['score']) then "first_phase"
    when (SD['first_phase']['score']...SD['second_phase']['score']) then "second_phase"
    when (SD['second_phase']['score']...SD['third_phase']['score']) then "third_phase"
    when (SD['third_phase']['score']...SD['fourth_phase']['score']) then "fourth_phase"
    when (SD['fourth_phase']['score']...SD['fifth_phase']['score']) then "fifth_phase"
    end
  end

  def undone_categories
    score[current_phase].reject { |category, value| category == "oath" || value >= 80 }.keys
  end

  def user_undone_oath
    score[current_phase].select { |category, value| category == "oath" && value < 80 }.keys
  end

  def save_avg_score(category)
    temp = score[current_phase]
    answers = Answer.joins(:question).where('questions.category = ? AND answers.user_id = ?', category, id)
    categ_scores = answers.map do |answer|
      right_ansr = answer.question.right_answer
      user_ansr = answer.user_answer
      right_ansr == 1 ? ((user_ansr - right_ansr) * -20) + 100 : ((right_ansr - user_ansr) * -20) + 100
    end
    temp[category] = categ_scores.sum / categ_scores.size
    score[current_phase] = temp
    save
  end

  private

  def user_score
    total_score = 0
    score.each do |_phase, categories|
      total_score += categories.reject { |category| category == "oath" }.count { |category| category[1] >= 80 }
    end
    total_score
  end
end
