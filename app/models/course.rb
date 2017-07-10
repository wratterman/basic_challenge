class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments

  def enrollees
    self.students.map do |student|
      student.name
    end.join(", ")
  end
end
