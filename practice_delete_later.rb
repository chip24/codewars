def sequential?(number)
  p digits = number.to_s.chars.map(&:to_i)
  if digits.last == 0
    digits.pop 
  end
  (1..digits.size-1).all? {|i| digits[i] == digits[i-1]+ 1}
end

p sequential?(67890)