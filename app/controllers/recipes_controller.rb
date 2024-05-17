class RecipesController < ApplicationController

  def index
    if params[:ingredients].present?
      @recipes = Recipe.where('ingredients LIKE ?', "%#{params[:ingredients]}%")
    else

      @recipes = Recipe.all

      @recipes = @recipes.all

    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @favourite = @recipe.favourites.find_by(user: current_user)
  end
end
