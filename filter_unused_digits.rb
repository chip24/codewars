# My code was ranked 14 out of 606.  I resubmitted unused_digits2, but it's not showing up anywhere in the code list for some reason.

def unused_digits(*numbers)
  digits = (0..9).to_a
  num_arr = []
  numbers.join.chars.each do |num| 
    num_arr << num.to_i
  end
  (digits - num_arr.uniq).join

end

#p unused_digits([12, 34, 56, 78])# "09"
#p unused_digits([2015, 8, 26]) # "3479"
#p unused_digits([276, 575]) # "013489"
#p unused_digits([643]) # "0125789"
#p unused_digits([864, 896, 744]) # "01235"

def unused_digits2(*numbers)
  ((0..9).to_a - numbers.join.chars.map(&:to_i)).join
end #.join

p unused_digits2([12, 34, 56, 78])# "09"
p unused_digits2([2015, 8, 26]) # "3479"
p unused_digits2([276, 575]) # "013489"
p unused_digits2([643]) # "0125789"
p unused_digits2([864, 896, 744]) # "01235"
