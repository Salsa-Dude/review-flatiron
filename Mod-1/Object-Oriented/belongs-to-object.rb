
# A song should belong to an artist.
# Songs should have a title and belong to an artist.
# A song should be able to tell you the name of its artist:

class Artist
  attr_accessor :name
end

class Song
  attr_accessor :title, :artist
end

marc_anthony = Artist.new
marc_anthony.name = "Marc Anthony"
p marc_anthony.name

vive = Song.new
vive.title = "Vive"
vive.artist = marc_anthony
p vive.artist.name
