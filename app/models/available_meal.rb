class AvailableMeal < ApplicationRecord
    belongs_to :recipe
    belongs_to :user
    has_many :tracked_meals 


    def recipelist
        self.recipe.name
    end

end
