class FavouritesController < ApplicationController

  before_action :set_recipe, only: %i[create new]

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new(recipe: @recipe, user: current_user)
    if @favourite.save
      render json: { message: 'Added to favorites successfully', favourite_id: @favourite.id }, status: :created
    else
      render json: { error: 'Failed to add to favorites' }, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    if @favourite
      @favourite.destroy
      render json: { favourite_id: nil }
      # notice: 'Favourite removed successfully'
    else
      # render json: { error: 'Favourite not found' }, status: :not_found
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
