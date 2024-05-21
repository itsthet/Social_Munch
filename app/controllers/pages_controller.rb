class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @recipe = Recipe.joins(:reviews).group("recipes.id").order("COUNT(reviews.id) DESC").first
    @popular_recipes = Recipe.popular.limit(3)
  end

  def dashboard
    @favourites = current_user.favourites.includes(:recipe)
  end
end
