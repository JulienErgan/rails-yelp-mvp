class Review < ApplicationRecord
  # associations
  belongs_to :restaurant
  # validations
  RATINGS = (0..5)
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: true
end
