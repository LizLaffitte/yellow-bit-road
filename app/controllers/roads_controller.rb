class RoadsController < ApplicationController
    def new
        @road = Road.new
        @user = current_user
    end

    def create
        @road = Road.new(road_params)
        @user = current_user
        if @road.save
            redirect_to user_road(@user)
        else
            render :new
        end
    end

    def show
        @road = Road.find_by_id(params[:id])
        
    end

    def edit
    end

    def update
    end

    def destroy

    end

    private
    def road_params
        params.require(:road).permit(:name, :public, :goal_date, :user_id)
    end
end
