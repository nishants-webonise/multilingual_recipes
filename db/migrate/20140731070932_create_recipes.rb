class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :ingredients
      t.text :preparation_method

      t.timestamps
    end
  end
end
