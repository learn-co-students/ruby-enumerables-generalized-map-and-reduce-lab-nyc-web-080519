# Your Code Here

def map(array)
  
  new_arr = []
  array.each do |ele|
    yield
  end
  new_arr
  
end


map([1, 2, 3, -9]) {|n| n *-1}
# map([1, 2, 3, -9]) {|n| n}
map([1, 2, 3, -9]) {|n| n *2}
map([1, 2, 3, -9]) {|n| n **2}