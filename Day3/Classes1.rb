class Course
  def initialize(name, students)
    @name = name
    @students = students
  end

  def add_students(student)
    @students.push(student)
  end

  def display
    puts @name
    puts @students
  end
end

s1 = Course.new("Saas1", ["X", "Y"])
s1.add_students("Z")
s1.add_students("A")
s1.display
