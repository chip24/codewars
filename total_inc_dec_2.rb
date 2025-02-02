# I used Copilot to come up with this code, since all of the explanations I found on StackExchange and similiar sites were confusing.  This code is ranked 11 out of 94.

def total_inc_dec(x)
  # Define the combinatorial choose function
  def nCr(n, k)
    numer = (n.downto(n - k + 1)).reduce(:*)
    puts "The numerator is #{numer}"
    denom = (1..k).reduce(:*)
    puts "The denominator is #{denom}"
    numer / denom
  end

  # Calculate the increasing, decreasing, and flat numbers
  increasing = nCr(x + 9, 9) - 1
  puts "Increasing is #{increasing}"
  decreasing = nCr(x + 10, 10) - (x + 1)
  puts "Decreasing is #{decreasing}"
  flat = x * 9
  result = increasing + decreasing - flat + 1

  result
end

# Figure out the logic of this code on 1-8-2025
# Example usage:
puts total_inc_dec(0) # Output: 1
puts total_inc_dec(1) # Output: 10
puts total_inc_dec(2) # Output: 100
puts total_inc_dec(3) # Output: 475
puts total_inc_dec(4) # Output: 1675



