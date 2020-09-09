class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new 
    
  end
  
  def create
    Student.create(params[:student][:first_name], params[:student][:last_name])
    redirect_to new_student_path
  end
  

end
