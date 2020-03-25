class UsersController < ApplicationController

    before_action :set_user, only: [:show]
    skip_before_action :authenticate_user, only: [:new, :create]

    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
       if @user.valid?
         @user.save
         session[:user_id] = @user.id
         redirect_to login_path
       else
         flash[:message] = @user.errors.full_messages
         redirect_to new_user_path
       end
      end

      def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation)
      end

end
