# Your Code Here
 def map(source_array)
  mapped = []
  i = 0
  while i < source_array.length do
    mapped << yield( source_array[i])
    i += 1
  end
  return mapped
end

def reduce(source_array, starting_point = nil)
  if starting_point
    source_array.reduce(starting_point) { |memo, element| yield(memo, element) }
  else
    source_array.reduce() { |memo, element| yield(memo, element) }
end

#sum = reduce(source_array) { |val, element| val + element }
#allTrue = reduce(source_array) { |val, element| val && !!element }
#anyTrue = reduce(source_array) { |val, element| val || !!element }