class RecipesController < ApplicationController

  def index
    if params[:ingredients].present?
      #the code "<~SQL" allows many lines of strings.
      #Used "@@" to check if the query matches the 'ingredients'
      sub_query = <<~SQL
        ingredients @@ :query
      SQL
      @recipes = Recipe.where(sub_query, query: params[:ingredients])
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
