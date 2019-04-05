
def using_push(array, string)
  array.push(string)
end

# prepends the provided value to the front of the array, moving all other elements up one
def using_unshift(array, string)
  array.unshift(string)
end

# Remove the last element of an array:
def using_pop(array)
  array.pop
end

def pop_with_args(array)
  array.pop(2)
end

# Returns the first element of array and removes it
def using_shift(array)
  array.shift
end

def shift_with_args(array)
  array.shift(2)
end

def using_concat(array1, array2)
  array1.concat(array2)
end

# Inserts the given values before the element with the given index
def using_insert(array, item)
  array.insert(4, item)
end

def using_uniq(array)
  array.uniq
end

def using_flatten(array)
  array.flatten
end

def using_delete(array, string)
  array.delete(string)
end

# Deletes the element at the specified index
def using_delete_at(array, num)
  array.delete_at(num)
end
