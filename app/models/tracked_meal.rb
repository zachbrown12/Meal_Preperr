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
          meal.start_time >= date && meal.start_time < date+7
        end
    end

    def self.recipedetailslist(date)
        @FilteredRD = []
        self.filter_dates(date).each do |meal|
            meal.available_meal.recipe.recipe_details.all.each do |recipe|
                @FilteredRD << recipe
            end
        end
        @FilteredRD
    end

    def self.buildgrocerylist(date)
        rdlist = TrackedMeal.recipedetailslist(date)
        rdcount = Hash.new(0)
        rdlist.each {|ele| rdcount[ele] += 1}
        rdcount
        # have a has of rd counts, now do math to get the servings

        grocerylist = []
        rdcount.each do |rd, num|
            grocerylist << " #{rd.servings*num} #{rd.serving_unit} #{rd.ingredient.name}"
        end
        grocerylist
    end


        


end
