# Most of the CodeWars answers had two or three functions. I should redo mine to eliminate extra variables.

def prime?(int)
  
  (2..Math.sqrt(int)).none? {|i| int.modulo(i).zero?}
end

def palindrome?(int)
  int.to_s == int.to_s.reverse
end

def backwardsPrime(start, stop)
  start = 12 if start < 10
  prime_arr = start.upto(stop).select {|i| prime?(i)}
  
  rev_arr = prime_arr.map {|int| int.to_s.reverse.to_i}
  rev_prime_arr = rev_arr.select {|i| prime?(i)}.map {|int| int.to_s.reverse.to_i}
  no_palindromes_arr = rev_prime_arr.select {|int| palindrome?(int) ? next : int}
end

p backwardsPrime(7000, 7100)
p backwardsPrime(500, 740)
p backwardsPrime(1,100)

def prime?(int)
  #p int
  (2...int).none? {|i| int.modulo(i).zero?}
end


def find_primes(min_value, max_value)
  min_value = 12 if min_value < 10
  prime_arr = min_value.upto(max_value).select {|i| prime?(i)}
  #p prime_arr
  rev_arr = prime_arr.map {|int| int.to_s.reverse.to_i}

  rev_prime_arr = rev_arr.select {|i| prime?(i)}.map {|int| int.to_s.reverse.to_i}
end

# on Sept 13, figure out how to only include the prime numbers from the original array whose reverses are also prime but not include the reverse primes in the final array

#p find_primes(1,100)
#p find_primes(9900,10000)
#p find_primes(7000,7100)


