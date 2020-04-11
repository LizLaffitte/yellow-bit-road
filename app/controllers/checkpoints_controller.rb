class CheckpointsController < ApplicationController
    def new
        if params[:road_id]
            @road = Road.find_by(id: params[:road_id])
            if @road.user == current_user
                @checkpoint = Checkpoint.new(road_id: params[:road_i])
            else
                redirect_to roads_path
            end
        else   
            @checkpoint = Checkpoint.new
        end

    end

    def create
        @checkpoint = Checkpoint.new(checkpoint_params)
    end

    private
    def checkpoint_params
        params.require(:checkpoint).permit(:order, :goal_date, :completed, :course_id, :road_id, :user_id)
    end
end
