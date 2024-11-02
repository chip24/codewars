#I submitted the code below to CodeWars.  Many of the other submissions were a little shorter, but I didn't try to shorten my code since I was ready to submit it and not work on it anymore.

def damaged_or_sunk (board, attacks)
  score_hash = Hash['sunk',0, 'damaged',0, 'not_touched',0, 'points',0]
  #p boat_arr_beg = board.flatten.tally.to_a
  
  hash = Hash.new(0)
  board.flatten.each {|num| hash[num] += 1}
  p boat_arr_beg = hash.to_a



  attacks.each do |attack| 
    x = attack[0] - 1
    y = board.size - attack[1]
    #puts "x is: #{x}"
    #puts "y is: #{y}"
    #puts "board[x][y] is: #{board[y][x]}"
    if board[y][x] > 0
      #score_hash['damaged'] += 1
      board[y][x] = 0
      #p board
    end
  end
  #p boat_arr_end = board.flatten.tally.to_a
  end_hash = Hash.new(0)
  board.flatten.each {|num| end_hash[num] += 1}
  p boat_arr_end = end_hash.to_a
  score_hash['sunk'] = boat_arr_beg.length - boat_arr_end.length
  #p "Total boats sunk: #{sunk}"

  
  p boat_hash_beg = boat_arr_beg.to_h
  p boat_hash_end = boat_arr_end.to_h

  boat_hash_end.each do |k, v|
    if k >= 1
      if v == boat_hash_beg[k]
        p v
        p boat_hash_beg[v]
        puts "boat hash end key is: #{k}"
        puts "boat hash beg key is: #{boat_hash_beg[k]} "
        score_hash["not_touched"] += 1
      else
        score_hash['damaged'] += 1
      end
    end      
  end
  score_hash["points"] = score_hash["sunk"] + score_hash["damaged"]*0.5 - score_hash["not_touched"]


  score_hash
end
# on 10-26 figure out how to get the last example to return  {"sunk"=>0, "damaged"=>1, "not_touched"=>1, "points"=>-0.5}, instead of : {"sunk"=>0, "damaged"=>2, "not_touched"=>0, "points"=>1.0}. I think there's something wrong with the "if v == boat_hash_beg[v]" part 

#p damaged_or_sunk([ [0, 0, 1, 0],[0, 0, 1, 0],[0, 0, 1, 0] ],  [[3, 1], [3, 2], [3, 3]])
#p damaged_or_sunk([[0,0,0,2,2,0],[0,3,0,0,0,0],[0,3,0,1,0,0],[0,3,0,1,0,0]],[[2, 1], [1, 3], [4, 2]])
#p damaged_or_sunk([ [3, 0, 1],[3, 0, 1],[0, 2, 1], [0, 2, 0] ],[[2, 1], [2, 2], [ 3, 2], [3, 3]])
#p damaged_or_sunk([[0, 0, 1, 2, 2, 0], [0, 3, 0, 1, 0, 0], [0, 3, 0, 0, 0, 0], [0, 3, 0, 0, 0, 0]], [[3, 4], [4, 3], [4, 4]])
p damaged_or_sunk([[0, 0, 0, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 2, 2, 2], [0, 0, 0, 0, 0, 0, 0]],[[2, 3], [1, 5], [4, 2], [2, 4]])
