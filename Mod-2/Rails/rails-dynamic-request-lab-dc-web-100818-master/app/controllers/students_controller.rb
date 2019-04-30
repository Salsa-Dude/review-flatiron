class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    student_id = params[:id]
    @student = Student.find_by_id(student_id)
  end
end