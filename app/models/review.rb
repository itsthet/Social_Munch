class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  validates :name, presence: true
  validates :rating, presence: true, length: { in: 1..5 }
end
