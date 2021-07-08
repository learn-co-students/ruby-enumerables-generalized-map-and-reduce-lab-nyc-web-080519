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

def reduce(source_array, starting_value=nil)
  if starting_value
    total = starting_value
    count = 0
  else
    total = source_array[0]
    count = 1
  end
  while count < source_array.length do
    total = yield(total, source_array[count])
    count += 1
  end
  total
end
