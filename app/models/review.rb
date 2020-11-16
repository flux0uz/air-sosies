class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, inclusion: { in: (1..5),
    message: "%{value} is not a valid rating" }
  validates :comment, presence: true
end
