# Define your Song class such that an individual song is initialized with a name, artist and genre.
# Create a class variable, @@count. We will use this variable to keep track of the number of new songs that are created from the Song class. Set this variable equal to 0

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  # Write a class method, .count, that returns the total number of songs created.
  def self.count
    @@count
  end

  # Write a class method, .genres that returns an array of all of the genres of existing songs. This array should contain only unique genres––no duplicates! Think about what you'll need to do to get this method working.
  def self.genres
    @@genres.uniq
  end

  # Write a class method, .artists, that returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats!
  def self.artists
    @@artists.uniq
  end

  # Write a class method, .genre_count, that returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
