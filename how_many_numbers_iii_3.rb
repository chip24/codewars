# I submitted this to CodeWars.  I used ChatGPT to help me come up with a new approach since the brute force way was not efficient.  My code was in the top ranked 9 out of191 on CodeWars. 


def find_all(n, k)
  # Generate all combinations of k digits from 1 to 9
  combinations = (1..9).to_a.repeated_combination(k).select { |combo| combo.sum == n }
  #p combinations
  
  # Convert combinations to integers
  numbers = combinations.map { |combo| combo.join.to_i }
  #p numbers

  # Return results
  return [] if numbers.empty?
  [numbers.length, numbers.first, numbers.last]
end

p find_all(84,4)