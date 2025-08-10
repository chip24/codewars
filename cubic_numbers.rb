# My code was ranked 7 out of 119.  I needed help remembering how to use scan to just get the digits and how to break the digits into groups of 1, 2, or 3 using scan again.

def is_sum_of_cubes(s)
  lucky_num = []

  str_arr = s.scan(/\d+/)
  three_char_arr = str_arr.flat_map {|str| str.scan(/.{1,3}/)}.map {|str| str == "000" || str == "00" ? str = "0" : str}
  
  three_char_arr.each do |str|
    sum = 0 
     str.chars.each do |dig|
      sum += dig.to_i ** 3
      if sum == str.to_i 
        lucky_num << sum
      end
    end
  end
  lucky_num.empty? ? "Unlucky" : lucky_num.join(" ") + " #{lucky_num.sum}" + " Lucky"
end

# on 7-14 figure out how to get rid of trailing zeros

# on 7-17 continue with page 50 in Learn Enough Ruby

#p is_sum_of_cubes("aqdf&0#1xyz!22[153(777.777")
#p is_sum_of_cubes("0 9026315 -827&()")#.to eq "0 0 Lucky"
#p is_sum_of_cubes("Once upon a midnight dreary, while100 I pondered, 9026315weak and weary -827&()") # "Unlucky"
p is_sum_of_cubes("000000weak and weary 1037tiredweary 1 upon")