class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    Student.create(name: name, age: age, cohort_id: self.id)
  end

  def average_age
    Float(self.students.sum(:age)) / Float(self.students.count)
  end

  def total_students
    self.students.count
  end

  def self.biggest
    self.all.sort_by {|cohort| cohort.students.length}.last
  end

  def self.sort_by_mod
    self.all.sort_by {|cohort| cohort.current_mod}
  end
end