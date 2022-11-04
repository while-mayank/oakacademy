class StudentsController < ApplicationController

  def index
    @students = Student.all.order(created_at: :desc)
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end 

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.js
      else
        render :new
      end
    end
  end

  private
  def student_params
    params
    params.require(:student).permit(:name, :gender, :dob, :city, language:[])
  end

end
