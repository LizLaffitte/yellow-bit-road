class CheckpointsController < ApplicationController
    def new
     
    end

    def create
        @checkpoint = Checkpoint.new(checkpoint_params)
    end

    private
    def checkpoint_params
        params.require(:checkpoint).permit(:order, :goal_date, :completed, :course_id, :road_id, :user_id)
    end
end
