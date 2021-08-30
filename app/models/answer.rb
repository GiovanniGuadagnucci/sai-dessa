class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :user_answer, presence: true
  validates_inclusion_of :user_answer, in: (1..5)
end
