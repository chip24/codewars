#The top CodeWars answers used the Prime class and the find method to get the prime that was equal to or greater than sum.  My answer was as good as, shorter, and clearer than most of the top answers.

#require 'prime'
#def minimum_number(numbers)
#  Prime.find { |prime| prime >= numbers.sum } - numbers.sum
#end




require 'prime'

def minimum_number(numbers)
  next_prime = numbers.sum 
  until next_prime.prime? == true do
    next_prime += 1
  end
  next_prime - numbers.sum 
end

p minimum_number([2,12,8,4,6])
p minimum_number([3,1,2])
p minimum_number([5,2])
p minimum_number([1,1,1])
p minimum_number([2,12,8,4,6])
p minimum_number([50,39,49,6,17,28])