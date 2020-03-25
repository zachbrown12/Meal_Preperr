class CreateTrackedMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :tracked_meals do |t|
      t.integer :available_meal_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
