

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # takes in an argument of a song
  # associates that song with the artist by telling the song that it belongs to that
  def add_song(song)
    song.artist = self
  end

  # takes in an argument of a song name
  # creates a new song with it and associates the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@sounds_count += 1
  end

  # is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    Song.all.count
  end
end

################################################

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # knows the name of its artist
  # returns nil if the song does not have an artist
  def artist_name
    if @artist == nil
      return nil
    end
    @artist.name
  end
end
