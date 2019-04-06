
def reverse_each_word(string)
  array = string.split
  array.collect do |word|
    word.reverse
  end.join(" ")
end


p reverse_each_word("Hello there, and how are you?")
