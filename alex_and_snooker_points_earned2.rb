def frame(balls)
  blz = { "R" => 1, "Y" => 2, "G" => 3, "Bn" => 4, "Be" => 5, "P" => 6, "Bk" => 7 }
  return "Foul" if balls.include?("W")

  score = balls.scan(/[A-Z][a-z]*(\d+)?/).sum do |letters, number|
    letters ||= ""  # Ensure letters are never nil
    number ||= "1"  # Default number to "1" if missing
    (letters * number.to_i).chars.sum { |ball| blz[ball] }
  end

  score > 147 ? "invalid data" : score
end


p frame("RBk"*15 + "YGBnBePBk")# 147
p frame("Bk16YGBnBeP")# 132
p frame("R9RGBn4BkRBeP")# 48
p frame("R15Bk16GYGBnBWeP")# 'Foul'
p frame("R8Bk17YGBnBk5BePBk1")# 'invalid data'
