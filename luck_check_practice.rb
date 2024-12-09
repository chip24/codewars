def luck_check(str)
  raise RuntimeError if str.empty? || str.match?(/\D/)

  mid_point = str.length / 2
  p left_sum = str[0...mid_point].chars.map(&:to_i).sum
  p right_sum = str[-mid_point..-1].chars.map(&:to_i).sum

  left_sum == right_sum
end

#p luck_check('683179')
#p luck_check('68300')
#p luck_check("")
#p luck_check('6F43E8')
p luck_check("543970707")