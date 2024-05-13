class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.integer :cooking_time
      t.integer :servings
      t.string :difficulty
      t.text :method

      t.timestamps
    end
  end
end
