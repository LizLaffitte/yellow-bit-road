class PathsController < ApplicationController
    def new
        @path = Path.new
        @user = current_user
    end

    def create
        @path = Path.new(path_params)
    end

    def edit
    end

    def update
    end

    def destroy

    end

    private
    def path_params
        params.require(:path).permit(:name, :language, :public, :goal_date, :user_id)
    end
end
