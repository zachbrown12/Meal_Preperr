class TrackedMealsController < ApplicationController


def index
    @tracked_meals = TrackedMeal.all
    begin 
        @date = params[:tracked_meal][:start_time].to_date
    rescue
        @date = Date.today
    end
end

def new
    @tracked_meal = TrackedMeal.new
end

def create 
    #breakfast
    i = 0
    until i == 7 do
        chosen_meal = AvailableMeal.all.sample
        if chosen_meal.recipe.meal_type == 'Breakfast'
        @tracked_meal = TrackedMeal.create(available_meal_id: chosen_meal.id, start_time: params[:tracked_meal][:start_time].to_date + i)
        i += 1 
        end
    end
    #lunch
    i = 0
    until i == 7 do
        chosen_meal = AvailableMeal.all.sample
        if chosen_meal.recipe.meal_type == 'Lunch'
        @tracked_meal = TrackedMeal.create(available_meal_id: chosen_meal.id, start_time: params[:tracked_meal][:start_time].to_date + i)
        i += 1 
        end
    end
    #dinner
    i = 0
    until i == 7 do
        chosen_meal = AvailableMeal.all.sample
        if chosen_meal.recipe.meal_type == 'Dinner'
        @tracked_meal = TrackedMeal.create(available_meal_id: chosen_meal.id, start_time: params[:tracked_meal][:start_time].to_date + i)
        i += 1 
        end
    end

    redirect_to user_tracked_meals_path(@current_user)
end

def show
    @tracked_meals = TrackedMeal.all
end

def update
    binding.pry
end

private
    def form_params
        params.require(:tracked_meal).permit(:available_meal_id, :start_time)
    
    end


end
