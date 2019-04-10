
# Part 1.
# Create a class, School, in the lib directory that can be initialized with a name.
# The School class would be referred to as a "model" in the domain model context.
class School

end

# A school should have a roster. The roster should be an empty hash upon initialization but will be built out to contain keys of grade levels. The value of each key will be an array of student names.
class School
  def initialize
    @roster = {}
  end
end

# You should be able to add a student to the school by calling the add_student method
# and giving it an argument of the student's name and their grade.
class School
  def initialize
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
end

# A method, grade, should take in an argument of a grade and return all of the students in that grade:
class School
  def initialize
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end
end

# You should be able to get a sorted list of all the students
# where the strings in the student arrays are sorted alphabetically.
class School
  def initialize
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
