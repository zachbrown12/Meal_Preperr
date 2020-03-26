class SessionsController < ApplicationController
    skip_before_action :logged_in, only: [:new, :create]
    
    def new

    end


    def create 
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id]= user.id
            redirect_to user_tracked_meals_path(user)
        else
            render :new
        end


    end

    def destroy
        session[:user_id]= nil
        redirect_to new_login_path
    end

end
