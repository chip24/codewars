#My code was ranked 34 out of 2030.  I did the logic all myself and just Googled to remember how to use sort_by.


def order_weight(string)
  int_str = string.strip.gsub(/\s+/," ").split(" ").map do |str|
    str.to_i
  end
  sum_arr = []
  int_str.each {|int| sum_arr << [int, int.digits.sum]}
  sum_arr.sort_by {|sub_arr| sub_arr[1]}.sort_by {|a, b| [b, a.to_s]}.map {|sub_arr| sub_arr[0].to_s}.join(' ')
 
  
end

#p order_weight("      103 123     4444   99 2000      ")
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")