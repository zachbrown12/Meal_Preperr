class TrackedMealsController < ApplicationController


def index
    @tracked_meals = TrackedMeal.all
    @tracked_meal = TrackedMeal.new
end

def new
    @tracked_meal = TrackedMeal.new
    
end

def create 
    @tracked_meal.create(form_params)
end

def show
    @tracked_meals = TrackedMeal.all
end

private
    def form_params
        params.require(:tracked_meal).permit(:available_meal_id, :start_time)
    
    end


end
