# code here!
class School 
  
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  def grade(searching_grade)
    @roster[searching_grade]
  end
  def sort
    return @roster.each do |grade, student_array|
      student_array.sort! {|first, second| first <=> second}
    end
  end
end