module UsersHelper
    def is_owner?(child_item)
        if child_item.user == current_user
            if child_item.instance_of?(Road)
                @local_one = edit_user_road_path(child_item)
                @local_two = user_road_path(current_user, child_item)
            elsif child_item.instance_of?(Checkpoint)
                road = params[:road_id]
                @local_one = edit_road_checkpoint_path(road, child_item)
                @local_two = road_checkpoint_path(road, child_item)
            end
            render partial: "users/edit_menu", locals: {child_path: @local_one, child_delete_path: @local_two}
        end
    end


end
