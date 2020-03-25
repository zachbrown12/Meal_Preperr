class AvailableMealsController < ApplicationController

    def new
        @available_meal = AvailableMeal.new
    end

    def create
        elim_empty(params).each do |rid|
            @available_meal = AvailableMeal.create(user_id: session[:user_id], recipe_id: rid)
        end
        redirect_to user_tracked_meals_path
    end

    def elim_empty(params)
        params[:available_meal][:recipe_id].reject { |r| r.empty? }
    end

    def available_meal_params
        params.require(:available_meal).permit(:user_id, recipe_id:[])
    end




end
