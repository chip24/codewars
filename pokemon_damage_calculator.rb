# My code was ranked 6 out of 160. I didn't need any help except to figure out the syntax in a case statement to use two arguments.

def calculate_damage(your_type, opponent_type, attack, defense)
  eff = 1

  case 
  when (your_type == "fire") && (opponent_type == "grass")
    eff = 2
  when (your_type == "grass") && (opponent_type == "fire")
    eff = 0.5
  when (your_type == "fire") && (opponent_type == "water")
    eff = 0.5 
  when (your_type == "water") && (opponent_type == "fire")
    eff = 2
  when (your_type == "water") && (opponent_type == "grass")
    eff = 0.5
  when (your_type == "grass") && (opponent_type == "water")
    eff = 2
  when (your_type == "water") && (opponent_type == "electric")
    eff = 0.5
  when (your_type == "electric") && (opponent_type == "water")
    eff = 2
  when your_type == opponent_type
    eff = 0.5
  
  end 

  damage = 50 * (attack / defense) * eff
  damage.to_i

end

#on 7-24 finish the case statement for effectiveness

# on 7-24, continue on page 128 in LERTBD

p calculate_damage("fire", "water", 100, 100)# 25)
p calculate_damage("grass", "water", 100, 100)# 100)
p calculate_damage("electric", "fire", 100, 100)# 50)
p calculate_damage("grass", "electric", 57, 19)# 150)
p calculate_damage("grass", "water", 40, 40)# 100)
p calculate_damage("grass", "fire", 35, 5)# 175)
p calculate_damage("fire", "electric", 10, 2)# 250)