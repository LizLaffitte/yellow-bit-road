module UsersHelper
    def is_road_owner?(road)
        if road.user == current_user
            render partial: "users/edit_menu", locals: {child_path: edit_user_road_path(road), child_delete_path: user_road_path(road)}
        end
    end


end
