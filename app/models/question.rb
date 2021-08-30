class Question < ApplicationRecord
  has_many :answers
  validates :content, :category, :right_answer, presence: true
  validates_inclusion_of :right_answer, in: (1..5)
end
