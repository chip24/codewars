# I submitted the number_of_partition code to CodeWars.  The formulas I came up with underneath this one timed out for large numbers or just approximated the answer. ChatGPT helped me find this dynamic approach.  This code was ranked 20th out of 292.

def number_of_partitions(n)
  # Create an array to store the number of partitions for each value up to n
  partitions = Array.new(n + 1, 0)
  partitions[0] = 1  # Base case: there's 1 way to partition 0

  # Iterate through each number k (the "part" size in a partition)
  (1..n).each do |k|
    # Update the partitions array for all values >= k
    (k..n).each do |i|
      partitions[i] += partitions[i - k]
    end
  end

  partitions[n]
end

# Example usage:
puts "Number of partitions for #{5}: #{number_of_partitions(5)}"
puts number_of_partitions(100)

def partitions(n)
  return 1 if n <= 1

  def helper(n, m)
    return 1 if n <= 1
    return helper(n, n) if m > n

    total = 0
    (1..m).reverse_each do |i|
      total += helper(n - i, i)
    end

    total
  end

  helper(n, n)
end

# on 12-28 figure out why it's timing out for large numbers


#p partitions(70)

def partition_function_approximation(n)
  # Validate input
  return nil if n <= 0

  # Constants
  sqrt_3 = Math.sqrt(3)
  pi = Math::PI

  # Compute the approximation
  numerator = Math.exp(pi * Math.sqrt(2 * n / 3.0))
  denominator = 4 * n * sqrt_3
  approximation = numerator / denominator

  approximation.to_i - 1
end

# on 12-27 find out why it's returning a decimal and one too high and 10 is reurning 47 not 42
puts partition_function_approximation(70) 

def partition_generating_function(x, terms)
  result = 1.0
  (1..terms).each do |k|
    result *= 1.0 / (1 - x**k)
  end
  result
end

# Example usage:
x = 0.5    # Replace with the desired value of x
terms = 100 # Number of terms to approximate the infinite product
puts partition_generating_function(x, terms)



