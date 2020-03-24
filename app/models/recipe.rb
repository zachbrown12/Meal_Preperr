class Recipe < ApplicationRecord
    has_many :ingredients, through: :recipe_details
    has_many :recipe_details
    has_many :users, through: :available_meals
    has_many :available_meals
end
