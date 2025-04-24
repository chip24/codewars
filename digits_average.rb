#My code was ranked 6th out of 69.  I needed to ask Copilot for help. I thought I needed to use recursion but just needed to set up a while loop.  I tried an until loop and recursion but couldn't get either to work. 

def average_consecutive_pairs(n)
  digits = n.to_s.chars.map {|char| char.to_i}

  while digits.size > 1   
    digits = digits.each_cons(2).map do |a, b|
      ((a + b)/2.0).ceil
   
  end

end
   digits[0] 
end

p average_consecutive_pairs(246)
p average_consecutive_pairs(89)