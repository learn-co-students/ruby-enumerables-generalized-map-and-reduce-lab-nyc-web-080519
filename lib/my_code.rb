def map(source_array)
  i = 0 
  new_array = []
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
  i +=1 
  end 
return new_array
end 


def reduce(source_array, starting_point = nil)
    i = 0 
    if starting_point  
          result = starting_point
    else
      result = source_array[i] 
      i += 1 
    end   
    while i < source_array.length do
     result = yield(result, source_array[i])
     i += 1 
    end 
    return result
end 
