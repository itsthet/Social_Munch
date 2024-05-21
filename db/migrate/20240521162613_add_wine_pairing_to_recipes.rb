class AddWinePairingToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :paired_wines, :string
    add_column :recipes, :pairing_text, :text
  end
end
