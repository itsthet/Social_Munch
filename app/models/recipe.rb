class Recipe < ApplicationRecord
  has_many :favourites

  has_many :reviews
  validates :name, presence: true

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
end
