class SessionsController < ApplicationController
    before_action :go_home, only: [:new, :create]
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render '/login'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to login_path
    end

end
