module UsersHelper
    def owner_edit_menu(child_item)
        if child_item.user == current_user
            if child_item.instance_of?(Road)
                @local_one = edit_road_path(child_item)
                @local_two = road_path(child_item)
            elsif child_item.instance_of?(Checkpoint)
                road = params[:road_id]
                @local_one = edit_road_checkpoint_path(road, child_item)
                @local_two = road_checkpoint_path(road, child_item)
            end
            render partial: "users/edit_menu", locals: {child_path: @local_one, child_delete_path: @local_two}
        end
    end

    def sidebar_options(child)
        if child.user == current_user
            render partial: "roads/owner_sidebar"
        else 
            render partial: "layouts/sidebar"
        end
    end


end
