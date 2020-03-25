class UsersController < ApplicationController
    skip_before_action :logged_in, only: [:new, :create]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        if @current_user.id == @user.id
            render :show

        else
            redirect_to users_path
        end

    end

    def new
        @user = User.new
    end

    def create

        user = User.create(user_param)
        
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end


    end




      private


      def user_param
        params.require(:user).permit(:name, :username, :password)
      end


end
