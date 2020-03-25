class TrackedMealsController < ApplicationController


def index
    @tracked_meals = TrackedMeal.all
end

end
