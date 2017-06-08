# code here!
require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end
  def roster
    @roster
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.sort.to_h
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
