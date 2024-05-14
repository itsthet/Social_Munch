class AddRatingToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :ratings, :float, default: 0
  end
end
