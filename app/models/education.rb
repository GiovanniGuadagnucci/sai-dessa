class Education < ApplicationRecord
  validates :content_url, :category, presence: true
end
