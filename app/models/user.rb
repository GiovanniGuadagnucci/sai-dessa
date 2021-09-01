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

  private

  def user_score
    total_score = 0
    score.each do |_phase, categories|
      total_score += categories.reject { |category| category == "oath" }.count { |category| category[1] >= 80 }
    end
    total_score
  end
end
