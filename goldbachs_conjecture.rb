# My code was ranked 6 out of 54.  I needed to Google to remember the syntax for the #prime? method.

require 'prime'


def check_goldbach(number)
  return [] if number.odd? || number <= 2
  prime_arr = []
  
  (2..number-1).each do |num| 
    diff = number - num
    
    if Prime.prime?(num) && Prime.prime?(diff)
      prime_arr << num
      prime_arr << diff

    end
    
    break if prime_arr.size > 0

  end

prime_arr

end

# on 5-20 figure out the logic of - An algorithm for verifying Goldbach's Conjecture could involve iterating through even numbers greater than 2 and checking if they can be expressed as the sum of two primes. This can be done by checking all prime numbers less than the even number and seeing if the difference between the even number and that prime is also prime. 

p check_goldbach(2)# [])
p check_goldbach(15)# [])
p check_goldbach(4)# [2, 2])
p check_goldbach(8)# [3, 5])
p check_goldbach(10)# [3, 7])
p check_goldbach(24)# [5, 19])


