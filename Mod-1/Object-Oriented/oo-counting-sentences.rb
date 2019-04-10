
class String
# Define this instance method to return true if the string you are calling it on
# ends in a period and false if it does not.
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split(/[.?!]/)
    sentence_array.delete_if {|sentence| sentence == "" }
    sentence_array.length
  end
end

p "my name is joseph.".sentence? # true
p "my name is".sentence? # false
p "hello! my name is Joseph. What's yours".count_sentences
