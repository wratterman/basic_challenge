class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @address = Address.new
    @address.student_id = @student.id
    @mailing_address = "#{@student.addresses.first.number} " +
                       "#{@student.addresses.first.street}, " +
                       "#{@student.addresses.first.city}, " +
                       "#{@student.addresses.first.state} " +
                       "#{@student.addresses.first.zipcode}"
  end
end
