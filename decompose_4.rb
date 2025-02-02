def decompose(n)
  target = n * n - (n-1) * (n-1)
  stack = []
  # Each state contains: [remaining_target, current_num, partial_solution]
  stack.push([target, n-1, []])
  
  while !stack.empty?
    remaining, curr_num, partial = stack.pop
    
    # Skip if we've gone too far down
    next if remaining < 0 || curr_num <= 0
    
    # Success case
    if remaining == 0
      return (partial + [n-1]).sort
    end
    
    # Try without current number first (to get highest possible numbers)
    stack.push([remaining, curr_num - 1, partial])
    
    # Try with current number if it fits
    if curr_num * curr_num <= remaining
      stack.push([
        remaining - curr_num * curr_num,
        curr_num - 1,
        partial + [curr_num]
      ])
    end
  end
  
  nil  # No solution found
end

p decompose(50)     # Should get [1, 3, 5, 8, 49]
p decompose(44)     # Should get [2, 3, 5, 7, 43]
p decompose(625)    # Should get [2, 5, 8, 34, 624]
p decompose(5)      # Should get [3, 4]
p decompose(7100)   # Should get [2, 3, 5, 119, 7099]
p decompose(99215)  # Should now work without stack overflow
p decompose(123456) # Expected: [1, 2, 7, 29, 496, 123455] Got: [2, 3, 4, 5, 29, 496, 123455]
p decompose(1234567) #OK Expected: [2, 8, 32, 1571, 1234566] Got: [2, 8, 32, 1571, 1234566]
p decompose(7654321) #OK Expected: [6, 10, 69, 3912, 7654320] Got: [6, 10, 69, 3912, 7654320]
p decompose(7654322) # Expected: [1, 4, 11, 69, 3912, 7654321] Got: [2, 3, 5, 10, 69, 3912, 7654321]
p decompose(76) # Expected: [1, 2, 5, 11, 75] Got: [3, 5, 6, 9, 75]
p decompose(2) # OK Expected:  Got: 
