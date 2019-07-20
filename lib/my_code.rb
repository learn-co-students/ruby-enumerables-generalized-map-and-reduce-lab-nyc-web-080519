def map(arr, &prc)
  arr.map { |ele| prc.call(ele) }
end

def reduce(arr, starting_point=nil, &prc)
  i = 0
  if starting_point.nil?
    starting_point = arr.first
    i += 1
  end
  while i < arr.length
    starting_point = prc.call(starting_point, arr[i])
    i += 1
  end
  starting_point
end