require 'pry'
require "json"
data = JSON.parse(File.read('contestants.json'))

# Build a method, get_first_name_of_season_winner, that takes in two arguments,
# a hash called data (i.e. the data structure described above), and a season.
# The method should return the first name of that season's winner.
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    binding.pry
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

get_first_name_of_season_winner(data, "season 16")

# Build a method, get_contestant_name, that takes in the data hash
# and an occupation string and returns the name of the woman who has that occupation.

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

# Build a method, count_contestants_by_hometown, that takes in two arguments
#––the data hash and a string of a hometown. This method should return a
# counter of the number of contestants who are from that hometown.
def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

# Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown.
# It returns the occupation of the first contestant who hails from that hometown.
def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end

# Build a method, get_average_age_for_season, that takes in two arguments––the data hash
# and a string of a season. Iterate through the hash and
# return the average age of all of the contestants for that season.
def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant_hash|
    age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
