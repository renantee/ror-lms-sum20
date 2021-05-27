class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = Course.all
  end

  def show; end

  def new
    @course = Course.new
    render partial: "form"
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect @course
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to root_path
  end

  private

  def course_params
    params.require(:course).permit(:name)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
