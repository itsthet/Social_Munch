class Recipe < ApplicationRecord
  has_many :favourites
  has_many :reviews
  validates :name, presence: true
end
