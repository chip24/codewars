# My code was ranked 8 out of 58.  I used Copilot to help me write the part of the code that finds the elements in arr that add up to n. The (n & num) part uses bitwise to check if num is part of n's binary representation.  

def powers(n)
  arr = []

  (0...n).each do |num|
     p 2 ** num
     arr << 2 ** num
     break if arr.sum >= n 
  end

  arr.select {|num| (n & num) != 0}
end

p powers(6)