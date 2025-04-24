# My first code was ranked 10 out of 202.  When I submitted, the second code, the first moved down to 11 and the second became 10. I needed no help at all.  

def even_or_odd(s)
  odd_arr = []
  even_arr = []
  s.chars.each do |char|
    if char.to_i.odd? == true 
      odd_arr << char.to_i 
    elsif 
      char.to_i.even? == true 
      even_arr << char.to_i 
    end
  end
  
  if odd_arr.sum > even_arr.sum 
    "Odd is greater than Even"
  elsif even_arr.sum > odd_arr.sum 
    "Even is greater than Odd"
  else
    "Even and Odd are the same"
  end
end

#p even_or_odd("12")
#p even_or_odd("123")
#p even_or_odd("112")

def even_or_odd2(s)
  full_arr = s.chars.map {|char| char.to_i}
  odd_arr = []
  even_arr = []

  full_arr.each do |num|
    if num.odd? == true 
      odd_arr << num 
    else
      even_arr << num 
    end
  end
  
  if odd_arr.sum > even_arr.sum 
    "Odd is greater than Even"
  elsif even_arr.sum > odd_arr.sum 
    "Even is greater than Odd"
  else
    "Even and Odd are the same"
  end
end

p even_or_odd2("12")
p even_or_odd2("123")
p even_or_odd2("112")