class PathsController < ApplicationController
    def new
        @path = Path.new
        @user = current_user
    end

    def create
        @path = Path.new(path_params)
        @user = current_user
        if @path.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy

    end

    private
    def path_params
        params.require(:path).permit(:name, :public, :goal_date, :user_id)
    end
end
