class RoadsController < ApplicationController
    before_action :find_road, only: [:show, :edit, :update]
    helper_method :course_name
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
       
        
    end

    def index
        @roads = Road.all
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

    end

    def find_road
        @road = Road.find_by_id(params[:id])
    end
    
    def course_name(course_id)
        @course = Course.find_by_id(course_id)
    end

    private
    def road_params
        params.require(:road).permit(:name, :public, :goal_date, :user_id, checkpoints_attributes:[:course_id, :goal_date, :user_id])
    end
end
