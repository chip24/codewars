# My code was ranked 1 out of 5 even before I upvoted it.  I didn't need to Google anything excelt to remember the syntax of #transpose to rotate the board.  This kata was too complicated for a level 6.

def valid_position?(board)
  flat_board_hash = board.flatten.tally
  board_hash = board.tally
  rotated_board_hash = board.transpose.map(&:reverse).tally

  return true if flat_board_hash["_"] == 9
  return false if flat_board_hash["X"] == nil

  return true if flat_board_hash["X"] == 1 && flat_board_hash["O"] == nil
  return false if (flat_board_hash["X"] > 1 && flat_board_hash["O"]) == nil
  return false if (flat_board_hash["X"] - flat_board_hash["O"]) > 1
  return false if flat_board_hash["X"] > 1 && flat_board_hash["O"] == nil
  return false if flat_board_hash["O"] > flat_board_hash["X"]
  
  if board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X"
    #puts "DIAGONAL X WIN LEFT TO RIGHT"
    flat_board_hash["O"] >= flat_board_hash["X"] ? (return false) : (return true)
  end
  
  if board[0][2] == "X" && board[1][1] == "X" && board[2][0] == "X"
    #puts "DIAGONAL X WIN RIGHT TO LEFT"
    flat_board_hash["O"] >= flat_board_hash["X"] ? (return false) : (return true)
  end

  if board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O"
    #puts "DIAGONAL 0 WIN LEFT TO RIGHT"
    flat_board_hash["X"] > flat_board_hash["O"] ? (return false) : (return true)
  end

  if board[0][2] == "O" && board[1][1] == "O" && board[2][0] == "O"
    #puts "DIAGONAL 0 WIN RIGHT TO LEFT"
    flat_board_hash["X"] > flat_board_hash["O"] ? (return false) : (return true)
  end

  return false if board_hash.has_key?(["O", "O", "O"]) && board_hash.has_key?(["X", "X", "X"])
  return false if board_hash.has_key?(["O", "O", "O"]) && flat_board_hash["X"] > flat_board_hash["O"]
  return false if board_hash.has_key?(["X", "X", "X"]) && flat_board_hash["X"] <= flat_board_hash["O"]
  return false if rotated_board_hash.has_key?(["O", "O", "O"]) && rotated_board_hash.has_key?(["X", "X", "X"])
  return false if rotated_board_hash.has_key?(["O", "O", "O"]) && flat_board_hash["X"] > flat_board_hash["O"]
  return false if rotated_board_hash.has_key?(["X", "X", "X"]) && flat_board_hash["X"] <= flat_board_hash["O"]
  

  true

end

p valid_position?([["O", "O", "X"], ["X", "X", "_"], ["X", "O", "O"]]) # false