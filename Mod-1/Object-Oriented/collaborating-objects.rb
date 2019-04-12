
# The Artist class will be responsible for either creating the artist
# (if the artist doesn't exist in our program yet) or
# finding the instance of that artist (if the artist does exist).


class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  # creates a new instance of Artist
 # adds the Artist instance to the @@all class variable
 def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  # adds the Artist instance to the @@all class variable
  def save
    @@all << self
  end

end
