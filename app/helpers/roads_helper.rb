module RoadsHelper
    def days_left(my_obj)
        @today = Date.today
        (my_obj.goal_date - @today).to_i
    end
end
