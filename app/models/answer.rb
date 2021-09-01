class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :user, presence: true, uniqueness: { scope: :question }
  validates_inclusion_of :user_answer, in: (0..5)
end
