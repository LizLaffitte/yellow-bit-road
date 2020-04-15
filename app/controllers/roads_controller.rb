class RoadsController < ApplicationController
    before_action :find_road, only: [:show, :edit, :update, :destroy]
    before_action :must_login, only: [:new, :create, :edit, :update, :destroy]
    before_action :owner_wall, only: [:edit, :update, :destroy]
    def new
        @road = Road.new
        @road.checkpoints.build(completed: false)
        @courses = Course.all
    end

    def create
        @road = Road.new(road_params)
        if @road.save
            redirect_to road_path(@road)
        else
            @courses = Course.all
            render :new
        end

    end

    def show
    end

    def index
        if params[:user_id]
            @roads = User.find_by_id(params[:user_id]).roads
        else
            @roads = Road.all
        end
    end

    def edit
        @checkpoints = @road.checkpoints
        
    end

    def update
        if @road.update(road_params)
            redirect_to road_path(@road)
        else
            render :edit
        end
    end

    def destroy
        @road.destroy
        redirect_to user_path(current_user)
    end

    private
    def road_params
        params.require(:road).permit(:name, :public, :goal_date, :user_id, checkpoints_attributes:[:course_id, :goal_date, :user_id])
    end

    def find_road
        @road = Road.find_by_id(params[:id])
    end
    def owner_wall
        if @road.user != current_user
            redirect_to user_path(current_user)
        end
    end
end
