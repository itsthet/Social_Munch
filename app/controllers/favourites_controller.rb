class FavouritesController < ApplicationController

  before_action :set_recipe, only: %i[create new]

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @favourite.recipe = @recipe
    @favourite.user = current_user
    @favourite.save
  end

  def destroy
    @favourite = Favourite.find_by(recipe_id: params[:recipe_id], user_id: current_user.id)
    if @favourite
      @favourite.destroy
      redirect_to @favourite.recipe, notice: 'Favourite removed successfully'
    else
      redirect_to @recipe, alert: 'Favourite not found'
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
