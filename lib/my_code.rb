# Your Code Here

def map(arr, &prc)
  
  x = 0
  while x < arr.length 
  arr[x] = prc.call(arr[x])
  x += 1 
  end   
  return arr
end 

def reduce(arr, acc = 0, &prc)
   x = 0
    if prc == {|memo, n| memo || n}
      if arr.any?{|ele| ele}
           return true 
      else
          return false 
      end
      
    else
     
      while x < arr.length 
        acc = prc.call(acc, arr[x])
        x += 1 
      end  
      return acc
    end
    
    

  
end
