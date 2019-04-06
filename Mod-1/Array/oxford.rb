

# Write a method oxford_comma that takes an argument array of string elements and converts it into a string using the Oxford comma.
def oxford_comma(array)
  if array.length == 2
    return "#{array[0]} and #{array[1]}"
  elsif 2 < array.length
    array[-1].insert(0, "and ")
  end
  array
end

p oxford_comma(["kiwi", "durian"])
