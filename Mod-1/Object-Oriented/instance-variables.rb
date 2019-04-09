
class Dog
  # setter(writer)
  def name=(dog_name)
    @this_dogs_name = dog_name
  end

  # getter(reader)
   def name
    @this_dogs_name
  end
end

lassie = Dog.new
lassie.name = "Joey"
puts lassie.name # Joey
