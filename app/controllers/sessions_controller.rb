class SessionsController < ApplicationController
    helper_method :log_in
    def new
        @user = User.new
    end

    def create
        # if logged_in?
        #     redirect_to user_path(@user)
        # else
            @user = User.find_by(username: params[:username])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                render '/login'
            end

        # end
        
    end

    def destroy
        session.delete :username
        redirect_to login_path
    end

    def log_in(user)
        session[:user_id] = user.id

    end
end
