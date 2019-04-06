
# Build the line method that shows everyone their current place in the line.
# If there is nobody in line, it should say "The line is currently empty."


def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end


# Build the now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front.
# If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
  end
end
