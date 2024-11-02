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
  boat_arr_end.each_with_index do |sub_arr_end,idx|
    sub_arr_beg = boat_arr_beg[idx]
    #p sub_arr_end
    if sub_arr_end[0] >= 1
      p sub_arr_beg
      p sub_arr_end
      if sub_arr_end == sub_arr_beg
        score_hash["not_touched"] += 1
      else
        p sub_arr_beg[1]
        p sub_arr_end[1]
        score_hash["damaged"] += 1
        #(sub_arr_beg[1] - sub_arr_end[1])
      #if sub_arr_end[1] == 0
       # score_hash["sunk"] += 1 
      
        
      end
    end
  end
  score_hash["points"] = score_hash["sunk"] + score_hash["damaged"]*0.5 - score_hash["not_touched"]


  score_hash
end
# on 10-25 figure out why #tally isn't working in Codewars
#p damaged_or_sunk([ [0, 0, 1, 0],[0, 0, 1, 0],[0, 0, 1, 0] ],  [[3, 1], [3, 2], [3, 3]])
#p damaged_or_sunk([[0,0,0,2,2,0],[0,3,0,0,0,0],[0,3,0,1,0,0],[0,3,0,1,0,0]],[[2, 1], [1, 3], [4, 2]])
#p damaged_or_sunk([ [3, 0, 1],[3, 0, 1],[0, 2, 1], [0, 2, 0] ],[[2, 1], [2, 2], [ 3, 2], [3, 3]])
p damaged_or_sunk([[0, 0, 1, 2, 2, 0], [0, 3, 0, 1, 0, 0], [0, 3, 0, 0, 0, 0], [0, 3, 0, 0, 0, 0]], [[3, 4], [4, 3], [4, 4]])