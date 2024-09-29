# My code worked on the first try, but the second to the top answer on Codewars was much shorter

=begin
def validate n
    n.digits.each_with_index.sum{|d, i| i.even? ? d : (d*2).digits.sum} % 10 == 0
end
=end



def validate(n)
  num_arr = n.digits
  #p num_arr.length
  if num_arr.length.even? == true
    mult_arr = num_arr.map.with_index {|dig, ind| ind.odd? ? dig *= 2 : dig }.reverse
  else
    mult_arr = num_arr.map.with_index {|dig, ind| ind.even? ? dig : dig = dig * 2 }.reverse
  end

  arr_sum = mult_arr.map {|dig| dig > 9 ? dig-9 : dig}.sum
  if arr_sum % 10 == 0
    true
  else
    false
  end


end

p validate(1714)
p validate(12345)
p validate(891)

p validate(2121)
p validate(1230)
