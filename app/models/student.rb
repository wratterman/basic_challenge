class Student < ActiveRecord::Base
  has_many :addresses
  has_many :enrollments
  has_many :courses, through: :enrollments

  def mailing_address
    "#{self.addresses.first.number} " +
    "#{self.addresses.first.street}, " +
    "#{self.addresses.first.city}, " +
    "#{self.addresses.first.state} " +
    "#{self.addresses.first.zipcode}"
  end

  def course_list
    self.courses.map do |course|
      course.name
    end.join(", ")
  end
end
