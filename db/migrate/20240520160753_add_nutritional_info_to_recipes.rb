class AddNutritionalInfoToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :protein, :float
    add_column :recipes, :carbs, :float
    add_column :recipes, :calories, :integer
    add_column :recipes, :fat, :float
    add_column :recipes, :fiber, :float
    add_column :recipes, :sugar, :float
  end
end
