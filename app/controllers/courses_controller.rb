class CoursesController < ApplicationController
    helper_method :difficulty_levels
    before_action :find_course, only: [:show, :edit]
  
    def difficulty_levels
       [['Easy', 'easy'], ['Moderate', 'moderate'], ['Challenging', 'challenging']]
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to course_path(@course)
        else
            render :new
        end
    end

    def index
        @courses = Course.all
    end

    def show
    end

    def find_course
        @course = Course.find_by_id(params[:id])
    end
    
    private
    def course_params
        params.require(:course).permit(:name, :description, :language, :difficulty, :source_url)
    end
end
