
# We created a pretty simple Book class that has a bunch of properties,
# and even turns its own page! Now it's your turn to try some of this on your own.
class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
end

rich_man = Book.new("rich man poor man")
p rich_man.title # "rich man poor man"
rich_man.turn_page # Flipping the page...wow, you read fast!

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
  end

  def cobble
    @condition = "new"
    puts "Your shoe is as good as new!"
  end
end

jordans = Shoe.new("jordans")
jordans.color = "blue"
p jordans.color # blue
p jordans.condition # nil
jordans.cobble
p jordans.condition # new
