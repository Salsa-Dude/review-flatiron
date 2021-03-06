class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @grade = grade
  end

  # This is a class method that creates the students table.
  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end

  # This is a class method that drops the students table.
  def self.drop_table
    sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
  end

  # This is an instance method that saves the attributes describing a given student to the students table in our database.
  def save
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end

  # This is a class method that uses keyword arguments.
  # Use the values of these keyword arguments to: 1) instantiate a new Student object with Student.new(name, grade) and 2) save that new student object via student.save. The #create method should return the student object that it creates.
  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end
end
