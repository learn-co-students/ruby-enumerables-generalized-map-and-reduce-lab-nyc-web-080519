def map(array)
  i = 0
  new_array = []
  
  while i < array.length do 
    new_array.push(yield(array[i]))
    i = i + 1 
  end
  return new_array 
end

def reduce(array, value = 0)
  i = 0
  while i < array.length do
    if value = yield(array[i], value)
    i = i + 1 
  else
    return FALSE
  end
  
  end
  return value
end
