module ApplicationHelper

    def has_errors?(this_obj)
        if this_obj.errors
           render partial: "layouts/error_display", locals: {obj_in_question: this_obj}
        end
    end

    def logged_in?
        !!session[:user_id]
    end


    def nav_menu
        if logged_in?
            render "layouts/logged_in_nav"
        else
            render "layouts/logged_out_nav"
        end
    end
    
   

    

end
