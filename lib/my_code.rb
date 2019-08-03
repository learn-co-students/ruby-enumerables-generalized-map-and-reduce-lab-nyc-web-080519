# Your Code Here

def map(array)
  new_array = []
  array.each do |item|
    new_array << yield(item)
  end
  new_array
end

def reduce(array, start = 0)
  if start != 0
    memo = start
  elsif array.size
    memo = array[0]
    array = array.drop(1)
  else
    return 'empty array'
  end

  array.each do |n|
    memo = yield(memo, n)
  end 
  memo
end




