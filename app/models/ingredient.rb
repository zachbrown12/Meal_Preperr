class Ingredient < ApplicationRecord
    has_many :recipes, through: :recipe_details
    has_many :recipe_details
end
