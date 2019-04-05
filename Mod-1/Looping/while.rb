
# we'll write a while loop that will continue to puts the phrase "Wingardium Leviosa"
# while our levitation force is less than 10

def using_while
	levitation_force = 6

	while levitation_force < 10
		puts "Wingardium Leviosa"
		levitation_force += 1
	end
end

using_while

def countdown_with_sleep(seconds_to_midnight)
  while seconds_to_midnight > 0
    puts "#{seconds_to_midnight} SECOND(S)!"
    sleep(1)
    seconds_to_midnight -= 1
  end
  "HAPPY NEW YEAR!"
end	end
