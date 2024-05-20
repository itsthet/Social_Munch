class AddDietaryRequirementsToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :dietary_requirements, :string
  end
end
