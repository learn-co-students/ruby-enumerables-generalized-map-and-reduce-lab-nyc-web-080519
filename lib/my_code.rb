# Your Code Here

def map(array)
  new_array = []
  array.each do |item|
    new_array << yield(item)
  end
  new_array
end

def reduce(array, start = {})
  if array.size === 0
    return 'empty array'
  end

  if start != {}
    array << start
  end

  memo = array[0]
  array.drop(1).each do |n|
    memo = yield(memo, n)
  end
  memo
end




