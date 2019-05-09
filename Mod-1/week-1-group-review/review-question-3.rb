require 'pry'

# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


class Photo

  @@all = []

  def initialize
    @@all << self
  end

  def user=(user_name)
    @user = user_name
  end

  def user
    @user
  end

  def self.all
    @@all
  end

  def comments
    Comment.all.select {|comment| comment.photo === self}
  end

  def make_comment(text)
    Comment.new(text, self)
  end
end

class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def photos
    Photo.all.select {|pic| pic.user == self}
  end
end

class Comment
  attr_accessor :text, :photo
  @@all = []

  def initialize(text, photo)
    @text = text
    @photo = photo
    @all << self
  end

  def self.all
    @@all
  end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
p sophie.name
sandwich_photo.user = sophie
p sandwich_photo.user.name
sandwich_photo

# => "Sophie"
p sophie.photos
# => [#<Photo:0x00007fae2880b370>]


# sandwich_photo.comments
# => []

# sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

# Comment.all
#=> [#<Comment:0x00007fae28043700>]
