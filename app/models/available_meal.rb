class AvailableMeal < ApplicationRecord
    belongs_to :recipe
    belongs_to :user
    has_many :tracked_meals 
end
