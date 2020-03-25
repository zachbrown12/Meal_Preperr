class TrackedMealsController < ApplicationController


def index
    @tracked_meals = TrackedMeal.all
end

def new
    @tracked_meal = TrackedMeal.new
    
end

def create 
    7.times do
        @tracked_meal = TrackedMeal.create(available_meal_id: AvailableMeal.all.sample.id, start_time: params[:tracked_meal][:start_time])
    end
    redirect_to user_tracked_meals_path(session[:user_id])
end

def show
    @tracked_meals = TrackedMeal.all
end

private
    def form_params
        params.require(:tracked_meal).permit(:available_meal_id, :start_time)
    
    end


end
