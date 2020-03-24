class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :food_group
      t.integer :calories
      t.string :serving_unit

      t.timestamps
    end
  end
end
