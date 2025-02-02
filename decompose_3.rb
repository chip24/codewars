# I finally submitted this code.  I input my original code which was running slowly for integers with 4 or more digits, and ChapGPT optimized it.  This solution was ranked 8 out of 278 in CodeWars

def decompose(n)
  def helper(target, max)
    return [0] if target == 0 # Found a valid decomposition
    (1..max).reverse_each do |i|
      square = i * i
      if square <= target
        result = helper(target - square, i - 1)
        return result + [i] if result # Found a valid decomposition
      end
    end
    nil # No solution found
  end

  # Start the helper with the target n^2 and maximum number (n-1)
  result = helper(n**2, n - 1)
  result.nil? ? nil : result.sort[1..-1]
end

# on 12-26 read the explanation of this code in ChatGPT and try to fully understand how it works.
# Examples
p decompose(50)      # Expected: [1, 3, 5, 8, 49]
p decompose(44)      # Expected: [2, 3, 5, 7, 43]
p decompose(625)     # Expected: [2, 5, 8, 34, 624]
p decompose(5)       # Expected: [3, 4]
p decompose(7100)    # Expected: [2, 3, 5, 119, 7099]
p decompose(123456)  # Expected to run in reasonable time






