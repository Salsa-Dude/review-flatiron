
# add a class definition for a Dog class
class Dog
  def bark
    puts "Woof!"
  end
  def sit
   puts "The Dog is sitting"
 end
end

# Under your Dog class definition, create three dogs in local variables, fido, snoopy, and lassie.
fido = Dog.new
snoopy = Dog.new
lassie = Dog.new

snoopy.bark

# add a class definition for a Person class
class Person
  def talk
    puts "Hello World!"
  end
  def walk
    puts "The Person is walking"
  end
end

# create two people in local variables, adele_goldberg and alan_kay
adele_goldberg = Person.new
alan_kay = Person.new

alan_kay.walk
