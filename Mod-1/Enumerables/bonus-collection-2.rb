
array = ["rat", "fang", "yo", "rat"]

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}

  # flag = true
  # array.each do |element|
  #   flag = false if element[0] != "r"
  # end
  # flag
end
p begins_with_r(array)

def contain_a(array)
  array.find_all {|word| word.include?("a")}

  # container = []
  # array.each do |element|
  #   container << element if element.include?("a")
  # end
  # container
end

p contain_a(array)

def remove_non_strings(array)
  container = []
  array.each do |element|
    container << element if element.is_a?(String)
  end
  container
end

def first_wa(array)
  array.find {|prefix| prefix.include?("wa")}

  # first_wa = nil
  # array.each do |element|
  #   if element.match(/wa/)
  #     first_wa = element
  #     break
  #   end
  # end
  # first_wa
end
