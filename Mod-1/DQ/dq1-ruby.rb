

def greet(name)
  puts "Hello, #{name}"
end

greet("joseph")


# no puts, won't return anything
def hate_steven?(name)
  if name == "Steven"
    "OMG He's the worst"
  else
   "You cool"
  end
end

puts

hate_steven?("Steve")

# How would you select all of the words that start with the letter "a" from the below array?
fruits = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]
 new_array = fruits.select {|fruit| fruit.start_with?("a")}
 test = fruits.select {|fruit| fruit[0] === "a"}
 puts test

 puts

 # Write a method that takes in an argument of a sentence and returns the number of words in the sentence
def word_count(sentence)
  puts sentence.split(" ")
end

word_count("Hi, isn't this a great and interesting sentence??")

puts

# What will the following method return?
def rude_greeting(name=nil)
  # This Operator only sets the variable if the variable is false or Nil
 name ||= "you jerk"
 puts "Hey there, #{name}"
end
rude_greeting

puts

# What will the following puts?
best_animal = "cat"
favorite_animal = best_animal
puts favorite_animal  # cat

# What will the following puts
# 'donkey' because ruby returns the last line
def my_favorite_animal
  "donkey"
end

best_animal = my_favorite_animal

puts best_animal

puts

# What error, if any, will the following code raise?
# "Blink" + 182
# no implicit conversion of Integer into String

#
# How would you puts out any and all foods that are delicious?
foods = {"pie" => "delicious", "broccoli" => "not delicious",
"carrots" => "not delicious", "apples" => "delicious",
"peanut butter" => "delicious"}

foods.each do |food, value|
  if value === "delicious"
    puts food
  end
end

puts
# Delete all elements of the foods hash that are not delicious.
delete_hash = foods.each do |food, value|
  if value != "delicious"
    foods.delete(food)
  end
end

puts delete_hash

puts

#  What is the return value of this method?
character_names = ["Daenerys Targaryen", "Jon Snow" ,"Arya Stark", "Tyrion Lannister", "Sansa Stark", "Cersei Lannister", "Margaery Tyrell"]

  def downcase_all(array_of_strings)
    array_of_strings.each do |one_string|
      one_string.downcase
    end
    array_of_strings
  end

puts downcase_all(character_names)

puts

# Write a method that puts out a random Archer quote.
archer = {
      "name" => "Sterling Mallory Archer",
      "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
      "favorite_drink" => "Bloody Mary",
      "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
  }

  puts archer["Quotes"][rand(0...6)]
