# My code was ranked 14 out of 264.  I didn't need any help.

def mul(a, b)
  product = 0
  (0...a).each {|num| product +=b} 
  product
end

p mul(0,1)
p mul(1,0)
p mul(0,0)
p mul(5,5)
p mul(3,4)
