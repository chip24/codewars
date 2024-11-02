# My solution was a little longer than the top solution.  The top solution is below.

=begin
require 'prime'

def count_Kprimes(k, start, nd)
  ([start, 2].max..nd).select { |n| prime_factors(n).size == k }
end

def puzzle(s)
  a, b, c = [1, 3, 7].map { |k| count_Kprimes(k, 2, s) }
  a.product(b,c).count { |set| set.reduce(:+) == s }
end

def prime_factors(n)
  n.prime_division.flat_map { |prime, amt| [prime] * amt }
end
=end

require 'prime'

def countKprimes(k, start, nd)
    k_prime_arr = []
    if start == 0 || start == 1
      start = 2
    end
    (start..nd).each do |num| 
      if Prime.prime_division(num).sum {|sub_arr| sub_arr[1]} == k
        k_prime_arr << num
      end
    end
    k_prime_arr
end
def puzzle(s)
    p one_prime_arr = countKprimes(1,0,s)
    p three_prime_arr = countKprimes(3,0,s)
    p seven_prime_arr = countKprimes(7,0,s)
    results = []
    one_prime_arr.each do |a|
      three_prime_arr.each do |b|
        seven_prime_arr.each do |c|
          results << [a,b,c] if a + b + c == s
        end
      end
    end
    results.size    
end

# on 10-22 figure out how to write puzzle
#p countKprimes(5, 500, 600)
#p countKprimes(2, 0, 100)
#p countKprimes(5, 1000, 1100)
#p countKprimes(7,0,200)

p puzzle(143)