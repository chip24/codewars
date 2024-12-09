require 'prime'

def sum_of_divided(lst)
  prime_arr = []
  lst.each do |num| 
    p div_arr = Prime.prime_division(num)
    div_arr.map {|arr| prime_arr << arr[0]}
  end
  final_hash = Hash.new(0)
  prime_arr.uniq.each do |num|
    final_hash[num] = 0
  end
  lst.each do |num|
    final_hash.each do |fac, sum|
      if num % fac == 0
        final_hash[fac] += num
      end
    end
  end
  p final_hash.delete_if {|k,_v| k < 0 }.sort
end

# on 11-10 figure out how to reject negative numbers (really just -1) as keys
#p sum_of_divided([12,15])
p sum_of_divided([15, 21, 24, 30, -45])