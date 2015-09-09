class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade 
  end

  def get_my_grade
    grade
  end

  def better_grade_than? other_student
    grade > other_student.get_my_grade
  end

  private
  def grade
    @grade
  end
end

sahaz = Student.new('sahaz', 26)
ayush = Student.new('ayush', 20)

puts "Well done!" if sahaz.better_grade_than?(ayush)
