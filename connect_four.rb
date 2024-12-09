def who_is_winner(pieces_position_list)
  grid = [["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"],
          ["x","x","x","x","x","x","x"]]
  move_arr = [[0, "Red"], [1, "Yellow"], [0, "Red"], [4, "Yellow"], [5, "Red"], [6, "Yellow"], [0, "Red"], [6, "Yellow"]]

  
  move_arr.each do |move|
    #p "COLUMN IS: #{column}"
    #p "COLOR IS: #{color}"
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




  
 
end

# on 11-20, find out how to increment the col_cord if it doesn't not equal "x"



p who_is_winner(["A_Red","B_Yellow","A_Red","B_Yellow","A_Red","B_Yellow","G_Red","B_Yellow"])

str_arr = [["5", "Yellow"], ["6", "Red"], ["3", "Yellow"], ["2", "Red"], ["0", "Yellow"], ["0", "Red"], ["4", "Yellow"], ["3", "Red"], ["3", "Yellow"], ["5", "Red"], ["1", "Yellow"], ["4", "Red"], ["2", "Yellow"], ["3", "Red"], ["5", "Yellow"], ["3", "Red"], ["3", "Yellow"], ["5", "Red"], ["6", "Yellow"], ["2", "Red"], ["5", "Yellow"], ["4", "Red"], ["0", "Yellow"], ["0", "Red"], ["2", "Yellow"], ["1", "Red"], ["4", "Yellow"], ["2", "Red"], ["4", "Yellow"], ["6", "Red"], ["0", "Yellow"], ["0", "Red"], ["6", "Yellow"], ["2", "Red"], ["1", "Yellow"], ["4", "Red"], ["5", "Yellow"], ["6", "Red"], ["6", "Yellow"], ["1", "Red"], ["1", "Yellow"], ["1", "Red"]]

p movements = str_arr.map {|num, str| [num.to_i, str] }
