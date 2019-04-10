
# Your class, Anagram should take a word on initialization, and instances should respond to a match method that takes an array of possible anagrams. It should return all matches in an array. If no matches exist, it should return an empty array.

class Anagram

  attr_accessor :name

  def initialize(word)
    @name = word
  end

  def match(array)
    array.select {|x| x.split("").sort == @name.split("").sort}
  end

end
