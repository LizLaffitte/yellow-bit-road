module ApplicationHelper

    def has_errors?(this_obj)
        if this_obj.errors
           render partial: "layouts/error_display", locals: {obj_in_question: this_obj}
        end
    end

    def logged_in_nav
        if logged_in?
            render "layouts/header_nav"
        end
    end


end
