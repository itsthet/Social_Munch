class Recipe < ApplicationRecord
  has_many :favourites
  has_many :reviews, dependent: :destroy
  validates :name, :description, presence: true
end
