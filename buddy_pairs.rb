require 'prime'

def buddy(n, limit)
  # n has to be >= start and <= limit
  # m will be greater than n 
  #start.prime_division.map {|arr|arr[0]} << 1
  #start.prime_division.inject(1) {|prod, n| prod *= n[1] + 1}
  #(1..Math.sqrt(start)).each_with_object([]) {|i, arr| (start % i).zero? && arr << i && start/i != i && arr << start/i }
  (1..Math.sqrt(n)).each_with_object([]) do |i, arr|
    if (n % i).zero?
      arr << i if i != n  # Add 'i' to the array if it's not 'n'
      arr << n / i if (n / i != i) && (n / i != n) # Add the co-divisor 'n/i' if it's not 'n'
    end
  end.sum
end

p buddy(48,50)
p buddy(75,100)

#p Prime.prime_division(100)
#p Prime.prime_division(48)


