def valid_position?(board)
  flat_board_hash = board.flatten.tally
  board_hash = board.tally
  rotated_board_hash = board.transpose.map(&:reverse).tally

  return true if board.empty?
  return false if flat_board_hash["X"] == nil
  return false if flat_board_hash["X"] > 1 && flat_board_hash["O"] == nil
  return false if flat_board_hash["O"] > flat_board_hash["X"]
  return false if (flat_board_hash["X"] - flat_board_hash["O"]) > 1
  return false if board_hash.has_key?(["O", "O", "O"]) && board_hash.has_key?(["X", "X", "X"])
  return false if board_hash.has_key?(["O", "O", "O"]) && flat_board_hash["X"] > flat_board_hash["O"]
  return false if board_hash.has_key?(["X", "X", "X"]) && flat_board_hash["X"] <= flat_board_hash["O"]
  return false if rotated_board_hash.has_key?(["O", "O", "O"]) && rotated_board_hash.has_key?(["X", "X", "X"])
  return false if rotated_board_hash.has_key?(["O", "O", "O"]) && flat_board_hash["X"] > flat_board_hash["O"]
  return false if rotated_board_hash.has_key?(["X", "X", "X"]) && flat_board_hash["X"] <= flat_board_hash["O"]
  true
end

#on 8-15 keep figuring out the logic to this kata and start on page 317 on LERTBD

 #p valid_position?([['X', 'O', 'X'],['X', 'O', 'X'],['O', 'X', 'O']]) # true
    
#p valid_position?( [['O', 'O', 'O'],['X', 'X', 'X'],['_', '_', 'X']]) #false

#p valid_position?([['X', 'X', 'O'],['O', 'O', 'X'],['X', 'O', 'O']]) #false

#p valid_position?([['X', 'X', 'X'],['O', 'O', 'X'],['O', 'O', 'X']]) # true

#p valid_position?([["O", "_", "O"], ["_", "O", "_"], ["O", "_", "O"]])

#p valid_position?([["O", "O", "X"], ["O", "X", "_"], ["X", "X", "O"]])

#p valid_position?([["O", "O", "X"], ["_", "X", "_"], ["X", "_", "O"]])

p valid_position?([["O", "O", "X"], ["X", "X", "_"], ["X", "O", "O"]]) # false