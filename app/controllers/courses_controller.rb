class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :edit]

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
    
    private
    def course_params
        params.require(:course).permit(:name, :description, :language, :difficulty, :source_url)
    end
    def find_course
        @course = Course.find_by_id(params[:id])
    end
end
