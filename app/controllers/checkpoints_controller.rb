class CheckpointsController < ApplicationController
    def new
        @road = Road.find_by(id: params[:road_id])
        @checkpoint = @road.checkpoints.build(road_id: @road.id)
    end

    def create
        @checkpoint = Checkpoint.new(checkpoint_params)
    end

    private
    def checkpoint_params
        params.require(:checkpoint).permit(:order, :goal_date, :completed, :course_id, :road_id, :user_id)
    end
end
