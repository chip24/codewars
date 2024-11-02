# x2 - 4 * y2 = n
# (x - 2*y) * (x + 2*y)



def find_solutions(n)
  solutions = []
  #puts "n is: #{n}"
  
  # Find all divisors of n
  divisors = (1..n).select { |d| n % d == 0 }
  
  # Iterate over divisor pairs
  divisors.each do |a|
    b = n / a
    
    # Check if (a + b) is even and (b - a) is divisible by 4
    if (a + b).even? && (b - a) % 4 == 0
      x = (a + b) / 2
      y = (b - a) / 4
      
      # Only include positive x and y
      solutions << [x, y] if x >= 0 && y >= 0
    end
  end
  
  solutions
end

# on 10-15 find out how to avoid time out error
p find_solutions(20)
p find_solutions(45)
p find_solutions(12)
p find_solutions(13)
p find_solutions(16)
p find_solutions(17)
p find_solutions(90000004)

