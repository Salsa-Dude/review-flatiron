
# You'll be teaching Dog about their names through two methods, #name, and #name= that read
# and write to a corresponding instance variable @name
# You'll be teaching Dog about their breed through two methods, #breed,
# and #breed= that read and write to a corresponding instance variable @breed.


class Dog
  # getter(reader)
  def name
    @name
  end
  # setter(writer)
  def name=(name)
    @name = name
  end

  def breed
    @breed
  end

  def breed=(breed)
    @breed = breed
  end
end

# You'll be teaching Person about their names through two methods, #name,
# and #name= that read and write to a corresponding instance variable @name
class Person
  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def job
    @job
  end

  def job=(job)
    @job = job
  end
end
