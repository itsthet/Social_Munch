class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
