class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  # Class Constant.
  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

# Since we want to add some customization to the method, we'll have to do three things:
# Explicitly define the genre= method, to integrate our class constant into the method
# Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
# Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
  def genre=(genre)
    @genre = genre
    GENRES << genre
  end
end

rich_man = Book.new('rich dad poor dad')
rich_man.turn_page # Fipping the page...wow, you read fast!
p rich_man.title  # "rich dad poor dad"
p rich_man.genre # nil
 rich_man.genre=("financial")
p rich_man.genre # "financial"


class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end

jordans = Shoe.new("jordans")
p jordans.brand # jordans
p jordans.condition #nil
jordans.cobble
p jordans.condition #new
