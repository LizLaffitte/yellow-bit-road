module CheckpointsHelper
    def formatted_goal_date(my_obj)
        my_obj.goal_date.strftime('%D')
    end

end
