# You will be building an Owner, Fish, Dog, and Cat class.

# Instances of the Owner class should be initialized with an @pets variable, set equal to the following hash: {fishes: [], cats: [], dogs: []}
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  # can count how many owners have been created
  def self.count
    @@all.length
  end

  # can reset the owners that have been created
  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  def say_species
    "I am a #{@species}."
  end

  # can buy a cat that is an instance of the Cat class
  # knows about its cats
  def buy_cat(new_cat_name)
    new_cat = Cat.new(new_cat_name)
    @pets[:cats] << new_cat
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

end

##################################################################

class Cat
  attr_accessor :mood
  attr_reader :name

  CATS = []

  def self.all
    CATS
  end

  # code goes here
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    CATS << self
  end
end

class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

joseph = Owner.new("Human")
p joseph
joseph.buy_cat("courage")
p joseph
p Cat.all
joseph.play_with_cats
p Cat.all
joseph.sell_pets
p joseph
