class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @favourites = current_user.favourites.includes(:recipe)
  end

end
