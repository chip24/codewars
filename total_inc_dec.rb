# After I submitted total_inc_dec_2.rb, I went through the function step by step to figure it out.  The submitted code used a shortcut/workaround for the nCr function numerator and denominator, and I switched it back to the original equation which should be n! for the numerator and k! * (n-k)! for the denominator.  This new function works except for if x = 0.  I also got rid of the -1 part of the incresing line and could therefore get rid of the +1 in the result line.  I had to do this since the instructions say to include 0 as an increasing number. After refactoring the code, I submitted it to CodeWars again.  The refactoring ranked 11th and the old code moved down one and ranked 12 out of 94.

def total_inc_dec(x)
  def nCr(n, k)
    numer = (n.downto(1)).reduce(:*)
    n_minus_k = n - k
    denom = (k.downto(1).reduce(:*)) * (n_minus_k.downto(1).reduce(:*))
    numer / denom
  end

  if x == 0
    return 1
  else
    increasing = nCr(x + 9, 9) 
    decreasing = nCr(x + 10, 10) - (x + 1)
    flat = x * 9
    result = increasing + decreasing - flat
  end 
end

# Figure out the logic of this code on 1-8-2025
# Example usage:
puts total_inc_dec(0) # Output: 1
puts total_inc_dec(1) # Output: 10
puts total_inc_dec(2) # Output: 100
puts total_inc_dec(3) # Output: 475
puts total_inc_dec(4) # Output: 1675






