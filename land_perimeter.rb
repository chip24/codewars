# I submitted the function below.  I needed a lot of help from Copilot.  There were not that many other solutions in CodeWars. This task was confusing and I still don't totally understand how it works.

def land_perimeter(land)
  rows = land.size
  cols = land[0].size
  perimeter = 0

  directions = [
    [-1, 0], [1, 0], [0, -1], [0, 1]  # Up, Down, Left, Right
    ]
  (0...rows).each do |i|
    (0...cols).each do |j|
      if land[i][j] == "X"
        directions.each do |dx, dy|
          new_x, new_y = i + dx, j + dy
          if new_x < 0 || new_y < 0 || new_x >= rows || new_y >= cols || land[new_x][new_y] == "O"
            perimeter += 1
          end
        end
      end
    end
  end
  "Total land perimeter: #{perimeter}"
end

# on 10-18 figure out what to do with adj_count

p land_perimeter([
 'XOOO',
 'XOXO',
 'XOXO',
 'OOXX',
 'OOOO'])
p land_perimeter(["OXOOOX", "OXOXOO", "XXOOOX", "OXXXOO", "OOXOOX", "OXOOOO", "OOXOOX", "OOXOOO", "OXOOOO", "OXOOXX"])
p land_perimeter(["OXOOO", "OOXXX", "OXXOO", "XOOOO", "XOOOO", "XXXOO", "XOXOO", "OOOXO", "OXOOX", "XOOOO", "OOOXO"])

def find_perimeter(grid)
  rows = grid.size
  cols = grid[0].size
  perimeter = 0

  directions = [
    [-1, 0], [1, 0], [0, -1], [0, 1]  # Up, Down, Left, Right
    ]
  (0...rows).each do |i|
    (0...cols).each do |j|
      if grid[i][j] == "X"
        directions.each do |dx, dy|
          new_x, new_y = i + dx, j + dy
          if new_x < 0 || new_y < 0 || new_x >= rows || new_y >= cols || grid[new_x][new_y] == "O"
            perimeter += 1
          end
        end
      end
    end
  end
  "Total land perimeter: #{perimeter}"
end

#p find_perimeter(["OXOOOX", "OXOXOO", "XXOOOX", "OXXXOO", "OOXOOX", "OXOOOO", "OOXOOX", "OOXOOO", "OXOOOO", "OXOOXX"])
#p find_perimeter(["OXOOO", "OOXXX", "OXXOO", "XOOOO", "XOOOO", "XXXOO", "XOXOO", "OOOXO", "OXOOX", "XOOOO", "OOOXO"])
