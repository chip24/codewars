#My original code in sum_of_factors worked, but it was long with a lot of variables.  I asked Copilot to shorten it and it gave me the following code, which I submitted.  The other solutions in CodeWars really varied.

require 'prime'

def sum_of_divided(lst)
  primes = lst.flat_map { |num| Prime.prime_division(num).map(&:first) }.uniq
  primes.each_with_object({}) do |prime, hash|
    sum = lst.select { |num| num % prime == 0 }.sum
    hash[prime] = sum
  end.reject { |k, _| k < 0 }.sort
end

p sum_of_divided([12,15])
p sum_of_divided([15, 21, 24, 30, -45])