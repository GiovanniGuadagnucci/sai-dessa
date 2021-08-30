class Education < ApplicationRecord
  validates :content, :category, presence: true
end
