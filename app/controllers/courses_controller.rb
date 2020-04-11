class CoursesController < ApplicationController
    helper_method :difficulty_levels
  
    def difficulty_levels
        ["easy", "moderate", "challenging"]
    end
    
    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to user_path(current_user)
        else
            render :new
        end
    end

    def index
        @courses = Course.all
    end
    
    private
    def course_params
        params.require(:course).permit(:name, :description, :language)
    end
end
