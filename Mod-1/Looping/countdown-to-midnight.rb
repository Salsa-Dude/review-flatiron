
# Write a method that takes in an integer argument and uses a while loop to countdown from that integer to 0,
# outputting "#{number} SECOND(S)!" in each iteration of the loop.
# The method should return "HAPPY NEW YEAR!" after the loop finishes.

def celebrate(seconds_to_midnight)

 while seconds_to_midnight > 0
   puts "#{seconds_to_midnight} Second(S)!"
   seconds_to_midnight -= 1
 end

  puts "Happy new year!"
end

 celebrate(10)
