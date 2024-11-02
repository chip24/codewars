# You can use (n1**n2)%10 to find the last digit of a number, but this doesn't work for large numbers in Ruby.  I used Copilot to help me with this solution.  There are complex math rules called congruences and residues needed.  The top CodeWars answers using #pow was very simple.

# def last_digit(n1, n2)
#  n1.pow(n2, 10)
#end


def last_digit(n1, n2)
  result = 1
  n1 = n1 % 10
  while n2 > 0
    result = (result * n1) % 10 if n2.odd?
    n2 = n2 >> 1 
    n1 = (n1 * n1) % 10
  end
  result
end

p last_digit(4, 1)           
p last_digit(4, 2)                
p last_digit(9, 7)                
p last_digit(10, 10 ** 10)        
p last_digit(2 ** 200, 2 ** 300) 

def modular_exponentiation(base, exponent, modulus)
  result = 1
  base = base % modulus
  while exponent > 0
    result = (result * base) % modulus if exponent.odd?
    exponent = exponent >> 1
    base = (base * base) % modulus
  end
  result
end

# Example usage:
n1 = 123456789
n2 = 987654321
last_digit = modular_exponentiation(n1, n2, 10)
#puts last_digit
