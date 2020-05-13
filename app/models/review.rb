class Review < ApplicationRecord
  # associations
  belongs_to :restaurant
  # validations
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: true
end
