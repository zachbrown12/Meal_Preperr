class TrackedMealsController < ApplicationController


def index
    @tracked_meals = TrackedMeal.all
end

def new
    @tracked_meal = TrackedMeal.new
    @user = User.find(params[:user_id])
end

def create 
    @tracked_meal = TrackedMeal.new
    @user = User.find(params[:user_id])
end

def show
    @tracked_meals = TrackedMeal.all
end


end
