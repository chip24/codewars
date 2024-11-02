# I submitted the following code to CodeWars.  Copilot helped me set up the turn part so that each player had a chance to attack.  In my original code, only the first player had a turn before switching to the second turn.  My code was ranked 6 out of very many for best practices in CodeWars.

def fight(robot1, robot2, tactics)
  turns = [robot1["tactics"].size, robot2["tactics"].size].max
  #players = [robot1, robot2]
  
  # Determine which player goes first
  first_player, second_player = robot1["speed"] >= robot2["speed"] ? [robot1, robot2] : [robot2, robot1]
  
  #puts "The first player is: #{first_player["name"]}"
  
  (1..turns).each do |turn|
    #p "Turn #{turn}:"
    
    # First player's attack
    current_tactic = first_player["tactics"][turn - 1]
    if current_tactic
      current_tactic_points = tactics[current_tactic]
      second_player["health"] -= current_tactic_points
      puts "#{first_player["name"]} attacks with #{current_tactic}, reducing #{second_player["name"]}'s health to #{second_player["health"]}"
    end
    
    if second_player["health"] <= 0
      return "#{first_player["name"]} has won the fight."
    end

    # Second player's attack
    current_tactic = second_player["tactics"][turn - 1]
    if current_tactic
      current_tactic_points = tactics[current_tactic]
      first_player["health"] -= current_tactic_points
      puts "#{second_player["name"]} attacks with #{current_tactic}, reducing #{first_player["name"]}'s health to #{first_player["health"]}"
    end
    
    if first_player["health"] <= 0
      return "#{second_player["name"]} has won the fight."
    end
  end
  if first_player["health"] > second_player["health"]
    "#{first_player["name"]} has won the fight."
  elsif first_player["health"] < second_player["health"]
    "#{second_player["name"]} has won the fight."
  else
    return 'The fight was a draw.'
end
end

robot1 = { "name" => "Rocky", "health" => 200, "speed" => 20, "tactics" => ["punch", "punch", "laser"] }
robot2 = { "name" => "Missile Bob", "health" => 100, "speed" => 21, "tactics" => ["missile", "missile", "missile", "missile"] }
tactics = { "punch" => 20, "laser" => 30, "missile" => 35 }

#puts fight(robot1, robot2, tactics)


#[{"name"=>"Rocky", "health"=>100, "speed"=>21, "tactics"=>["space ray"]}, {"name"=>"Missile Bob", "health"=>100, "speed"=>21, "tactics"=>["space ray"]}, {"space ray"=>100}

#puts fight({"name"=>"Rocky", "health"=>76, "speed"=>78, "tactics"=>["punch", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile"]}, {"name"=>"Missile Bob", "health"=>441, "speed"=>89, "tactics"=>["punch", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile"]}, {"punch"=>15, "laser"=>30, "missile"=>12})

puts fight({"name"=>"Rocky", "health"=>526, "speed"=>7, "tactics"=>["punch", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile"]}, {"name"=>"Missile Bob", "health"=>363, "speed"=>3, "tactics"=>["punch", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile", "punch", "laser", "missile"]}, {"punch"=>28, "laser"=>17, "missile"=>18})