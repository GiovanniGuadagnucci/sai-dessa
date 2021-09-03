class Question < ApplicationRecord
  has_many :answers
  validates :content, :category, :right_answer, presence: true
  validates_inclusion_of :right_answer, in: (1..5)

  def find_user_answer(user)
    if Answer.exists?(user: user, question: self)
      Answer.find_by(user: user, question: self)
    else
      Answer.create(user: user, question: self, user_answer: 0)
    end
  end
end
