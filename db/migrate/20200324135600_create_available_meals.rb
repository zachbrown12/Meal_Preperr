class CreateAvailableMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :available_meals do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.integer :user_rating

      t.timestamps
    end
  end
end
