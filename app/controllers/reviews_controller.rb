class ReviewsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
  end
end
