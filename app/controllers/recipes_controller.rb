class RecipesController < ApplicationController

  def index
    if params[:ingredients].present?
      @recipes = Recipe.where('ingredients LIKE ?', "%#{params[:ingredients]}%")
      else
        @recipes.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


end
