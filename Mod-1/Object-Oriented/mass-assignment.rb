
# Create a Person class that accepts a hash upon initialization. The keys of the hash should conform to the attributes below:
# allowable properties:

class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes=nil)
    if attributes
      attributes.each do |key, value|
        self.send("#{key}=", value)
      end
    end
  end
end

info = {
  :name => "Avi",
  :birthday => "01/29/1984",
  :hair_color => "brown",
  :eye_color => "brown",
  :height => "short",
  :weight => "good",
  :handed => "lefty",
  :complexion => "decent",
  :t_shirt_size => "medium",
  :wrist_size => "small",
  :glove_size => "normal",
  :pant_length => "32",
  :pant_width => "32"
}

lizz = Person.new(info)
p lizz
