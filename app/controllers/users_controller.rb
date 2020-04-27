class UsersController < ApplicationController
    before_action :go_home, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = current_user
        @roads = @user.roads
    end

    def destroy
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
