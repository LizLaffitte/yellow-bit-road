class RoadsController < ApplicationController
    
    def new
        @road = Road.new
        @user = current_user
        @road.checkpoints.build(completed: false)
    end

    def create
        @road = Road.new(road_params)
        @user = current_user
        if @road.save
            redirect_to user_roads_path(@user)
        else
            render :new
        end

    end

    def show
        @road = Road.find_by_id(params[:id])
        
    end

    def index
        @roads = Road.all
    end

    def edit
    end

    def update
    end

    def destroy

    end

    private
    def road_params
        params.require(:road).permit(:name, :public, :goal_date, :user_id, checkpoints_attributes:[:course_id, :goal_date, :user_id])
    end
end