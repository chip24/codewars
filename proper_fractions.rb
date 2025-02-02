# I found online that Euler's Totient Function is the best way to find the answer to this, and I turned the function into code.  My answer was ranked 6th out of 134. 

require 'prime'

def proper_fractions(n)
  result = n 
  n.prime_division.each do |prime, _|
    result *= (1.0- 1.0 / prime)
  end
  if n == 1
    result = 0
  else
    result.to_i
  end
end

p proper_fractions(1)
p proper_fractions(2)
p proper_fractions(5)
p proper_fractions(15)
p proper_fractions(25)




