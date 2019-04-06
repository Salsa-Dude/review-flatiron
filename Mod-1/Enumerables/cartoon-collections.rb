
dwarves = [ "Doc", "Dopey", "Bashful", "Grumpy", "Sneezy", "Sleepy", "Happy" ]

# Print out the following list using `puts`:
# Look into the each_with_index method.

def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

# It should then capitalize each element and add an exclamation point at the end.
# The return value of this method should be an array

planeteer_calls = ["earth", "wind", "fire", "water", "heart"]

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |call| call.capitalize + '!' }
end
