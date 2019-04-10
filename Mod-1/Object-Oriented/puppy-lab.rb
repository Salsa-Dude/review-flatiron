
# You'll need to set a class variable equal to an empty array inside your class.
# Call your class variable @@all
# Use the self keyword inside the #initialize method to refer to the new dog you are trying to store in your @@all array.
# You will need to write a class method, .all, that iterates over all of the individual dogs stored in the @@all array and puts out their name to the terminal.

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    puts @@all.map{ |dog| dog.name }
  end

  # This method should operate on the @@all array of existing dogs and empty that array.
  def self.clear_all
    @@all.clear
  end
end
