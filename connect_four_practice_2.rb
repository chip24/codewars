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

def diagonals(grid)
  diag_arr = (0..grid.size-4).map do |i|
    (0..grid.size-1-i).map { |j| grid[i+j][j] }
  end.concat((1..grid.first.size-4).map do |j|
    (0..grid.size-j-1).map { |i| grid[i][j+i] }
  end)
  puts "DIAG_ARR is: #{diag_arr}"
  diag_arr
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


  move_arr.each do |move|
    column, color = move
    token = color[0]
    (grid.size - 1).downto(0) do |row|
      if grid[row][column] == "x"
        grid[row][column] = token
        break
      end
    end
  end


p grid
puts "transposed grid is #{grid.transpose}"
puts "diagonals grid is #{diagonals(grid)}"
puts "rotated90 diagonals grid is #{diagonals(rotate90(grid))}"



winner?(grid)
winner?(grid.transpose)
winner?(diagonals(grid))
winner?(diagonals(rotate90(grid)))
 
end

# on 11-25, figure out if #diagonals is really working

p who_is_winner(["C_Yellow", "E_Red", "G_Yellow", "B_Red", "D_Yellow", "B_Red", "B_Yellow", "G_Red", "C_Yellow", "C_Red", "D_Yellow", "F_Red", "E_Yellow", "A_Red", "A_Yellow", "G_Red", "A_Yellow", "F_Red", "F_Yellow", "D_Red", "B_Yellow", "E_Red", "D_Yellow", "A_Red", "G_Yellow", "D_Red", "D_Yellow", "C_Red"])

#who_is_winner(["A_Red","B_Yellow","A_Red","B_Yellow","A_Red","B_Yellow","G_Red","B_Yellow"])
#p who_is_winner(["C_Yellow", "E_Red", "G_Yellow", "B_Red", "D_Yellow", "B_Red", "B_Yellow", "G_Red", "C_Yellow", "C_Red", "D_Yellow", "F_Red", "E_Yellow", "A_Red", "A_Yellow", "G_Red", "A_Yellow", "F_Red", "F_Yellow", "D_Red", "B_Yellow", "E_Red", "D_Yellow", "A_Red", "G_Yellow", "D_Red", "D_Yellow", "C_Red"])

#p who_is_winner(["A_Red", "B_Yellow", "A_Red", "E_Yellow", "F_Red", "G_Yellow", "A_Red", "G_Yellow"])
