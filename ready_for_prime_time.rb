#My top answer was one of the shortest on CodeWars.  My #prime_first_try method also worked but I shortened it to my #prime method and submitted that. The top CodeWars answers really varied in style and length.

require 'prime'

def prime(n)
  (2..n).select { |num| Prime.prime?(num) }
end

p prime(11)

def prime_first_try(n)
  prime_arr =[]
  (2..n).each {|num| prime_arr << num if Prime.prime?(num) == true  }
  prime_arr

end

#p prime(11)