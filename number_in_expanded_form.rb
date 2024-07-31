def expanded_form(num)
  digit_arr = num.digits.reverse
  #p "The digit array is #{digit_arr}"
  value_arr = []
  while digit_arr.length > 0

    digit_arr.each do |dig|
      length_minus_one = digit_arr.length - 1
      #puts "Length minus one is #{length_minus_one}"
      #puts "The digit is #{dig}"
      value_arr << ("1" + "0" * length_minus_one).to_i * dig
      #p "The value array is #{value_arr}"

      digit_arr = digit_arr.drop(1)
      
    end
  
  end
  #p value_arr
  zeroless_arr = value_arr.reject {|val| val == 0}
  p zeroless_arr

  zeroless_arr.join(" + ")


end
expanded_form(1)
expanded_form(12)
expanded_form(1023)
expanded_form(12034)
expanded_form(123405)
expanded_form(12304056)
#puts ("1" + "0" * 3).to_i


