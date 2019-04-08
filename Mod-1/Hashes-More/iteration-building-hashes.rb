
arr = ['sugar glider', 'sloth', 'sloth', 'sloth', 'pig']

def count_elements(array)
  # code goes here
  new_hash = {}
  array.each do |word|
    if !new_hash[word]
      new_hash[word] = 0
    end
    new_hash[word] += 1
  end
  new_hash
end

p count_elements(arr)
