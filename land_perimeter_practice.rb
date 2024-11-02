R = 3
C = 5

def numofneighbour(mat, i, j)
  count = 0
  
  # UP
  count += 1 if i > 0 && mat[i - 1][j] == "X"
  # LEFT
  count += 1 if j > 0 && mat[i][j - 1] == "X"
  # DOWN
  count += 1 if i < R - 1 && mat[i + 1][j] == "X"
  # RIGHT
  count += 1 if j < C - 1 && mat[i][j + 1] == "X"

  count
end

def findperimeter(mat)
  perimeter = 0
  
  # Traversing the matrix and finding ones to calculate their contribution
  (0...R).each do |i|
    (0...C).each do |j|
      if mat[i][j] == "X"
        perimeter += (4 - numofneighbour(mat, i, j))
      end
    end
  end
  
  perimeter
end

# Driver Code
mat = [
  [0, "X", 0, 0, 0],
  ["X", "X", "X", 0, 0],
  ["X", 0, 0, 0, 0]
]

puts findperimeter(mat)




str_mat = ['XOOXO',
 'XOOXO',
 'OOOXO',
 'XXOXO',
 'OXOOO'].map {|str| str.chars}

 p findperimeter(str_mat)