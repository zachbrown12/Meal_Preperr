class CreateRecipeDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_details do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.float :servings
      t.string :serving_unit

      t.timestamps
    end
  end
end
