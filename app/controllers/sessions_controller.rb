class SessionsController < ApplicationController

skip_before_action :authenticate_user, only: [:new, :create]

def new
end

def create
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    session[:username] = @user.name
    redirect_to user_tracked_meals_path(@user)
  else
    flash[:message] = 'Incorrect Login'
    redirect_to login_path
  end
end

def destroy
  session[:user_id] = nil
  redirect_to login_path
end

end
