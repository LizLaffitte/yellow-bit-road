class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to '/login'
        else
            binding.pry
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password_digest, :email)
    end
end
