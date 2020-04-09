module ApplicationHelper

    # def header_nav
    #     if logged_in?
    #         "You Are Logged In"
    #     else
    #     end
    # end

    def logged_in_nav
        if logged_in?
            render "layouts/header_nav"
        end
    end


end
