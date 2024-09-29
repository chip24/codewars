# I submitted matrix_addition2 and it was the exact same as the top answer in Codewars.


require 'matrix'

def matrix_addition(a, b)
  # the * is needed to prevent adding extra [] to the matrix and to "decompose the array of arrays into individual arguments for the Matrix constructor" <-- according to CoPilot 
  mat_a = Matrix[*a]
  mat_b = Matrix[*b]
  (mat_a + mat_b).to_a
end

p matrix_addition([[1]], [[2]])
p matrix_addition([[1, 2, 3], [3, 2 , 1], [1, 1, 1]], [[2, 2, 1], [3, 2, 3], [1, 1, 3]])

def matrix_addition2(a, b)
  # the * is needed to prevent adding extra [] to the matrix and to "decompose the array of arrays into individual arguments for the Matrix constructor" <-- according to CoPilot 
  (Matrix[*a] + Matrix[*b]).to_a
end

p matrix_addition2([[1]], [[2]])
p matrix_addition2([[1, 2, 3], [3, 2 , 1], [1, 1, 1]], [[2, 2, 1], [3, 2, 3], [1, 1, 3]])