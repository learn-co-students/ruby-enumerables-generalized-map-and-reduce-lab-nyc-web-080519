# Your Code Here
def map(source_array)
  return source_array.map do |n|
    yield(n)
  end
end

def reduce(source_array, value=nil)
  if value
    source_array.reduce(value) do |acc, n|
      yield(acc, n)
    end
  else
    source_array.reduce() do |acc, n|
      yield(acc, n)
    end
  end
end

