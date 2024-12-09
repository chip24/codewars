def diagonals(grid)
  rows = grid.size
  cols = grid[0].size

  # Check for downward diagonals (\)
  (0..rows - 4).each do |row|
    (0..cols - 4).each do |col|
      if (grid[row][col] != "x" && 
          grid[row][col] == grid[row + 1][col + 1] && 
          grid[row + 1][col + 1] == grid[row + 2][col + 2] && 
          grid[row + 2][col + 2] == grid[row + 3][col + 3])
        return grid[row][col]
      end
    end
  end
  # Check for upward diagonals (/)
  (3..rows - 1).each do |row|
    (0..cols - 4).each do |col|
      if (grid[row][col] != "x" &&
          grid[row][col] == grid[row - 1][col + 1] && 
          grid[row - 1][col + 1] == grid[row - 2][col + 2] && 
          grid[row - 2][col + 2] == grid[row - 3][col + 3])
        return grid[row][col]
      end
    end
  end

  return "Draw"

end

def winner?(grid)
  grid.each do |sub_arr|
    if /R{4,}/.match?(sub_arr.join)
      puts "IT'S a MATCH for R"
      return "Red"
    elsif /Y{4,}/.match?(sub_arr.join)
      puts "IT'S a MATCH for Y"
      return "Yellow"
    else
      return "Draw"
    end
  end
end

def rotate90(grid)
  rotated_grid = grid.transpose
  rotated_grid.map {|row| row.reverse} #took out ! after map on 11-22
  rotated_grid
end


def who_is_winner(pieces_position_list)

  grid = [["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"]]

  replacement_map = {
  'A' => 0,
  'B' => 1,
  'C' => 2,
  'D' => 3,
  'E' => 4,
  'F' => 5,
  'G' => 6
}


rep_arr = pieces_position_list.map {|move| 
   move.split("_")}

str_arr = rep_arr.map do |sub_arr|
  sub_arr.each do |string|
    string.gsub!(/[A-G]/, replacement_map)
  end
end

p move_arr = str_arr.map {|num, str| [num.to_i, str] }
#p move_arr.reverse

  move_arr.each do |move|
    column, color = move
    token = color[0]
    (grid.size - 1).downto(0) do |row|
      if grid[row][column] == "x"
        grid[row][column] = token
        break
      end
    end
    winner?(grid)
    winner?(grid.transpose)
    if diagonals(grid) == "Y"
      return "Yellow"
    elsif diagonals(grid) == "R"
      return "Red"
  end
end

p grid
puts "transposed grid is #{grid.transpose}"
puts "diagonals grid is #{diagonals(grid)}"
puts "rotated90 diagonals grid is #{diagonals(rotate90(grid))}"





end

#p who_is_winner(["C_Yellow", "E_Red", "G_Yellow", "B_Red", "D_Yellow", "B_Red", "B_Yellow", "G_Red", "C_Yellow", "C_Red", "D_Yellow", "F_Red", "E_Yellow", "A_Red", "A_Yellow", "G_Red", "A_Yellow", "F_Red", "F_Yellow", "D_Red", "B_Yellow", "E_Red", "D_Yellow", "A_Red", "G_Yellow", "D_Red", "D_Yellow", "C_Red"])
# on 11-26 figure out why the grid below is returning "Yellow" instead of "Red"
#p who_is_winner(["C_Yellow", "B_Red", "B_Yellow", "E_Red", "D_Yellow", "G_Red", "B_Yellow", "G_Red", "E_Yellow", "A_Red", "G_Yellow", "C_Red", "A_Yellow", "A_Red", "D_Yellow", "B_Red", "G_Yellow", "A_Red", "F_Yellow", "B_Red", "D_Yellow", "A_Red", "F_Yellow", "F_Red", "B_Yellow", "F_Red", "F_Yellow", "G_Red", "A_Yellow", "F_Red", "C_Yellow", "C_Red", "G_Yellow", "C_Red", "D_Yellow", "D_Red", "E_Yellow", "D_Red", "E_Yellow", "C_Red", "E_Yellow", "E_Red"])

p who_is_winner(["A_Yellow", "B_Red", "B_Yellow", "C_Red", "G_Yellow", "C_Red", "C_Yellow", "D_Red", "G_Yellow", "D_Red", "G_Yellow", "D_Red", "F_Yellow", "E_Red", "D_Yellow"])


