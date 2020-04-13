class SessionsController < ApplicationController
    before_action :go_home, only: [:new, :create]
    def new
        @user = User.new
    end

    def create
        if params[:username]
            @user = User.find_by(username: params[:username])
            if @user && @user.authenticate(params[:password])
                log_in(@user)
            else
                render '/login'
            end
        else
            if @user = User.find_by(email: auth[:info]['email'])
                log_in(@user)
            else
                @user = User.new(email: auth[:info]['email'], username: auth[:info]['name'], password: SecureRandom.hex, uid: auth['uid'], image: auth['info']['image'] )
                  if @user.save
                    log_in(@user)
                  else
                    render :new
                  end
            end
        end
    end

    def destroy
        session.delete :user_id
        redirect_to login_path
    end

    private
    def auth
        request.env['omniauth.auth']
    end

end
