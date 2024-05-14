class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  validates :comment, :rating, presence: true
  validates :rating, inclusion: { in: 1..5, message: "must be between 1 and 5" }
end
