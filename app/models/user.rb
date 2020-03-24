class User < ApplicationRecord
    has_many :available_meals
    has_many :recipes, through: :available_meals
end
