def fight(robot1, robot2, tactics)
   turns = [robot1["tactics"].size, robot2["tactics"].size].max
  players = [robot1, robot2]
  robot1["speed"] > robot2["speed"] ? first_player = robot1 : first_player = robot2
  puts "The first player is: #{first_player["name"]}"
  #p start_index = players.index(first_player)
  current_player = first_player
  (1..turns).each do |turn|
    p "It is turn: #{turn}"
    
    p "The current player is: #{current_player["name"]}"
    #players[(start_index + turn -1) % players.length]
    other_player = players.reject { |player| player == current_player }.first
    p "The other player is: #{other_player["name"]}"
    p current_tactic = current_player["tactics"][turn-1]
    p current_tactic_points = tactics[current_tactic]
    p other_player["health"] -= current_tactic_points
    if other_player["health"] <= 0 
      return "#{current_player["name"]} has won the fight."
      break
    else
      current_player = other_player
    end
end
  return 'The fight was a draw.'
end

robot1 = {
  "name" => "Rocky",
  "health" => 200,
  "speed" => 20,
  "tactics" => ["punch", "punch", "laser", "missile"]
 }
 robot2 = {
   "name" => "Missile Bob",
   "health" => 100,
   "speed" => 21,
   "tactics" => ["missile", "missile", "missile", "missile"]
 }
 tactics = {
   "punch" => 20,
   "laser" => 30,
   "missile" => 35
 }

#on 10-31 figure out why the current player is staying Missile Bob and not switching to Rocky.
 p fight(robot1, robot2, tactics)