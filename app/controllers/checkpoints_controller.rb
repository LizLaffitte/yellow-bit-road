class CheckpointsController < ApplicationController
    before_action :find_checkpoint, only: [:show, :edit, :update, :destroy]

    def new
        if params[:road_id]
            @road = Road.find_by(id: params[:road_id])
            if @road.user == current_user
                @checkpoint = Checkpoint.new(road_id: params[:road_id])
                @course = Course.new
                @course.checkpoints << @checkpoint
            else
                redirect_to roads_path
            end
        elsif params[:course_id]   
            @checkpoint = Checkpoint.new(course_id: params[:course_id])
        end

    end

    def create
        @checkpoint = Checkpoint.new(checkpoint_params)
        if @checkpoint.save
            redirect_to road_path(params[:road_id])
        else
            render :new
        end
    end

    def show
        @course = @checkpoint.course
    end

    def find_checkpoint
        @checkpoint = Checkpoint.find_by_id(params[:id])
    end

    private
    def checkpoint_params
        params.require(:checkpoint).permit(:order, :goal_date, :completed, :course_id, :road_id, :user_id, course_attributes:[:name, :description, :language, :difficulty, :source_url])
    end
end
