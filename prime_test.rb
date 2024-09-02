# the top answer on Codewars
#require 'prime'

#def isPrime(num)
#  num.prime?
#end


#Copilot refactored my original code to make it faster.

def isPrime(num)
  return false if num <= 1
  return true if num == 2
  return false if num % 2 == 0

  divisor = 3
  while divisor * divisor <= num
    return false if num % divisor == 0
    divisor += 2
  end
  true
end

puts isPrime(4)
puts isPrime(100)
puts isPrime(999)
puts isPrime(958297)
puts isPrime(-7)

puts isPrime(2)
puts isPrime(3)
puts isPrime(5)
puts isPrime(457)
puts isPrime(39229)