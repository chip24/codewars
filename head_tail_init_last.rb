# My code was ranked 9 out of 913 even though the only difference between my code and the code ranked 1 was that I used the parameter "arr" and they used the parameter "array".

def head(arr)
  arr[0]
end

def tail(arr)
  arr[1..-1]
end

def init(arr)
  arr[0..-2]
end

def last(arr)
  arr[-1]
end

p head([1,2,3,4,5])
p tail([1,2,3,4,5])
p init([1,2,3,4,5])
p last([1,2,3,4,5])
