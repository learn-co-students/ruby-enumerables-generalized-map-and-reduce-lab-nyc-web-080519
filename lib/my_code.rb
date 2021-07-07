def map_to_negativize(source_array)
  map( source_array[i] * -1 )
end
 
def map_to_no_change(source_array)
  map( source_array[i] )
end
 
def map_to_double(source_array)
    map( source_array[i] * 2 ) 
end
 
def map_to_square(source_array)
    map( source_array[i] * source_array[i] )
end

def reduce_to_total(starting_point, source_array)
    map( source_array[i] + source_array[i+1] )
end

def reduce_to_all_true (source_array)
    reduce(if source_array == true)
end

def reduce_to_any_true (source_array)
    reduce(if source_array == true)/n
end
