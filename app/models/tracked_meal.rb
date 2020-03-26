class TrackedMeal < ApplicationRecord
    belongs_to :available_meal

    def self.calories(date)
        total = 0
        self.filter_dates(date).each do |meal|
            meal.available_meal.recipe.recipe_details.all.each do |recipe|
                total += recipe.ingredient.calories
            end
        end
        total
    end

    def self.filter_dates(date)
        self.all.select do |meal|
          meal.start_time > date && meal.start_time < date+7
        end
    end

        


end
