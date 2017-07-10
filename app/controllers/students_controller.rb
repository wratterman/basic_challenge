class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @address = Address.new
    @address.student_id = @student.id
  end
end
