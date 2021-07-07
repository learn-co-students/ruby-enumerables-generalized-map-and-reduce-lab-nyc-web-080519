def map(source_array)
    new_array = []
    i = 0
    while i < source_array.length
        new_array << yield(source_array[i])
        i+=1
    end
    new_array 
end

# def reduce(source_array, starting_value = 0)
#   i = 0
#   while i < source_array.length
#     yield(source_array[i], starting_value)
#     starting_value += source_array[i]
#     i += 1
#   end
#   starting_value
# end

def reduce(source_array, starting_value=0)
  i = 0
  while i < source_array.length
    if source_array[i]
      yield(source_array[i], source_array[(i+1)%source_array.length])
      return true
    end
    i+=1
  end
  false
end











