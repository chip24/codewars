# top Codewars answer
# def sum_dig_pow(a, b)
#	(a...b).select { |n| n == n.to_s.chars.map.with_index(1) { |e, i| e.to_i ** i }.reduce(:+) }
#end

def sum_dig_pow(a, b)
  num_range = *(a..b)

  str_arr = num_range.map do |int|
    int.to_s.chars
  end

  num_arr = str_arr.map {|sub_arr| sub_arr.map(&:to_i)}
  exp_arr = num_arr.map do |sub_arr|
    sub_arr.map.with_index do |dig,idx|
      dig ** (idx+1)
    end
  end
  
  summed_arr = exp_arr.map do |sub_arr|
    sub_arr.inject(:+)
  end

  matching_elements = num_range.each_with_index.select {|value, index| value == summed_arr[index]}.map(&:first)

  #matching_elements
end
# on 8-17-24 figure out how to sum the digits and add the sum as a value and the original number as a key to the hash
# on 
p sum_dig_pow(1,10)
p sum_dig_pow(1,100)
p sum_dig_pow(10,100)
p sum_dig_pow(90,100)
p sum_dig_pow(90,150)
p sum_dig_pow(50,150)
p sum_dig_pow(10,150)



