

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

# Write a method that returns the second supply for the Fourth of July
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

# Write a method that adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

# Write a method that adds a supply to Memorial Day.
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

# Write a method that adds a new holiday and its associated supplies to any season.
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

# Write a method to collect all Winter supplies from all the winter holidays.
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end

# Write a method that uses a loop to list out all the supplies you have for each holiday and the season.


# Use string manipulation to get your output to match what the test is expecting.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end



# Write a method to collect all holidays with "BBQ" in the supply array.
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end

p all_holidays_with_bbq(holiday_supplies)
