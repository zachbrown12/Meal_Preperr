class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :meal_type
      t.integer :health_rating
      t.text :instructions

      t.timestamps
    end
  end
end
