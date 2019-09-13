class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, key| hash[key] = []}
  end
  
  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(teacher)
    @teachers << teacher
  end

  def enroll(student)
    @students.length < @student_capacity ? !!(@students << student) : false
  end

  def enrolled?(student)
    @students.include?(student)
  end 

  def student_to_teacher_ratio
    (@students.length / @teachers.length.to_f).floor
  end

  def add_grade(student, grade)
    enrolled?(student) ? !!(@grades[student] << grade) : false
  end 

  def num_grades(student)
    @grades[student].length
  end 

  def average_grade(student)
    grades = @grades[student]
    return nil if grades.length == 0 || enrolled?(student) == false
    (grades.sum / grades.length.to_f).floor
  end
end
