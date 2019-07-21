# Your Code Here
def map(source_array)
  newArray = []
  count = 0
  while count < source_array.length do
    newArray.push(yield(source_array[count]))
    count += 1
  end
  newArray
end

def reduce(source_array, starting_value=0)
  count = 0
  total = starting_value
  while count < source_array.length do
    total = yield(source_array[count], total)
    count += 1
  end
  if total == nil
    return false
  else
    return total
  end
end
