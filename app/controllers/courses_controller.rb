class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :edit, :update, :destroy]
    before_action :admin_wall, only: [:edit, :update, :destroy]

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

    def edit
    end
    
    def update
        if @course.update(course_params)
            redirect_to course_path(@course)
        else
            render :edit
        end
    end

    def destroy
        @course.destroy
        redirect_to courses_path
    end
    
    private
    def course_params
        params.require(:course).permit(:name, :description, :language, :difficulty, :source_url)
    end
    def find_course
        @course = Course.find_by_id(params[:id])
    end
    def admin_wall
        if !current_user.admin
            redirect_to course_path(find_course)
        end
    end
end
