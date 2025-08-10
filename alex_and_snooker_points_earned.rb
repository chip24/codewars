# My code was ranked 4 out of 37. I just needed to Google how to split the balls at capital letters and how to multiply the strings by any following integers.  The rest I did myself.  I pasted my code into Copilot and ChatGPT trying to make it more concise, but their answers were wrong.

def frame(balls)
  $blz = {"R"=>1, "Y"=>2, "G"=>3, "Bn"=>4, "Be"=>5, "P"=>6, "Bk"=>7}
  return "Foul" if balls.include?("W")
  ball_arr = balls.split(/(?=[A-Z])/)
  new_arr = []
  score = 0
  
  ball_arr.each do |item|
    letters, numbers = item.match(/([a-zA-Z]+)(\d+)?/).captures
    new_arr << result = numbers ? letters * numbers.to_i : letters
  end

  new_string = new_arr.join
  final_arr = new_string.split(/(?=[A-Z])/)

  final_arr.each {|ele| score += $blz[ele]}

  score > 147 ? "invalid data" : score
end

# On 6-14 figure out how to deal with white balls

p frame("RBk"*15 + "YGBnBePBk")# 147
p frame("Bk16YGBnBeP")# 132
p frame("R9RGBn4BkRBeP")# 48
p frame("R15Bk16GYGBnBWeP")# 'Foul'
p frame("R8Bk17YGBnBk5BePBk1")# 'invalid data'