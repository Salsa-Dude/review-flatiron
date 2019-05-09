class Animal
  attr_accessor :species

  # method returning


end

# Make a new instance of Animal?
# puts out to the terminal, the species of that new Animal instance?
kitten = Animal.new
puts kitten.species #cat


# Although we all know that cats are the best species, not all animals are cats (unfortunately).
# How could you change the Animal class so that an instance of animal can have its species set to any species at all?
kitten.species = "dog"
puts kitten.species

puts

# We have the following class, and the following two instances of that class:
class Animal

  def species
    "cat"
  end
end

maru = Animal.new
hanna = Animal.new

puts maru == hanna  # false


class Animal2

  def species
    my_species = "cat"
  end

  def say_species
    puts "Hi! I'm a #{species}"
  end
end

maru = Animal2.new
maru.say_species

puts

# Reverse engineer this code (i.e., write the class that will make the code work as invoked below):

class Animal3
  def initialize(value)
end

frederick = Animal3.new("bull")
frederick.species
