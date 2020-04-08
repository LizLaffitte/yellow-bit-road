class SessionsController < ApplicationController
    helper_method :log_in
    def new
        if logged_in?
            @user = current_user
            redirect_to user_path(@user)
        else
            @user = User.new
        end
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

    def log_in(user)
        session[:user_id] = user.id

    end
end
