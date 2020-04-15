class CheckpointsController < ApplicationController
    before_action :find_checkpoint, only: [:show, :edit, :update, :destroy]
    before_action :must_login, except: [:show]
    before_action :owner_wall, only: [:edit, :update, :destroy]

    def new
        if params[:road_id]
            find_parent_road
            if @road.nil?
                redirect_to roads_path, alert: "Road not found."
            elsif @road.user == current_user
                @checkpoint = Checkpoint.new(road_id: params[:road_id])
                @course = Course.new
                @course.checkpoints << @checkpoint
            else
                redirect_to roads_path, alert: "You have no power here."
            end
        elsif params[:course_id]   
           find_parent_course
            @checkpoint = Checkpoint.new(course_id: params[:course_id])
            render "course_new"
        end

    end

    def create
        find_parent_road
        find_parent_course
        if @road.nil? || @course.nil? && @road.user == current_user
            @checkpoint = Checkpoint.new(checkpoint_params)
        else
            redirect_to user_path(current_user)
        end
        if @checkpoint.save
            redirect_to road_path(@checkpoint.road_id)
        else
            if @road.nil?
                render "course_new"
            else
                @course = Course.new
                @course.checkpoints << @checkpoint
                render :new
            end
        end
    end

    def edit
        find_parent_road
        if @road.nil?
            redirect_to roads_path, alert: "Road not found."
        elsif @road.user != current_user
            redirect_to roads_path, alert: "You have no power here."
        end
    end

    def update 
        if @checkpoint.update(checkpoint_params)
            redirect_to road_path(params[:road_id])
        else
            render :edit
        end
    end
    def show
        @course = @checkpoint.course
    end

    def destroy
        @checkpoint.destroy
        redirect_to road_path(params[:road_id])
    end    

    private
    def checkpoint_params
        params.require(:checkpoint).permit(:order, :goal_date, :completed, :course_id, :road_id, :user_id, course_attributes:[:name, :description, :topic, :difficulty, :source_url])
    end

    def find_checkpoint
        @checkpoint = Checkpoint.find_by_id(params[:id])
    end

    def find_parent_road
        @road = Road.find_by(id: params[:road_id])
    end
    def find_parent_course
        @course = Course.find_by_id(params[:course_id])
    end
    def owner_wall
        if @checkpoint.user != current_user
            redirect_to user_path(current_user)
        end
    end
end
