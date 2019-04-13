
# Define the User class such that a user can have a first and last name. You'll need both a setter and a getter for first and last name.

class User
  attr_accessor :first_name, :last_name
end

class Student < User
  attr_accessor :knowledge

  def initialize(knowledge = [])
    @knowledge = knowledge
  end

  def learn(knowledge)
    @knowledge << knowledge
  end
end

class Teacher < User
  KNOWLEDGE = ["a String is a type of data in Ruby", "programming is hard, but it's worth it", "javascript async web request", "Ruby method call definition", "object oriented dog cat class instance", "class method class variable instance method instance variable", "programming computers hacking learning terminal", "bash Ruby rvm update certs"]

  def teach
    KNOWLEDGE.sample
  end
end

lape = Teacher.new
jim = User.new
jim.first_name = "Jim"
jim.last_name = "Bond"
p jim
steve = Student.new
p steve
steve.learn(lape.teach)
p steve
