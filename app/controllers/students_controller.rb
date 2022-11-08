class StudentsController < ApplicationController

  def index
    @students = Student.all.order(created_at: :desc)
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

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update

    @student = Student.find_by(id: params[:id])
    # @student.update(avatar: params[:file])
    @student.update(student_params)
      respond_to do |format|
        if @student.update(student_params)
          format.js
        else 
          format.js
        end
      end
  end
  def destroy
    @student = Student.find_by(id: params[:format])
  end


  private
  def student_params

    if params[:student]
    params.require(:student).permit(:name, :gender, :dob, :city, :avatar, language:[])
    else
      params.permit(:avatar)
    end
  end

end
