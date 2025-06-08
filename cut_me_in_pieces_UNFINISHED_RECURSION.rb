def part_const(n, k, num)
  ans_arr = []
  num_arr = (1...n).to_a - [num]

  num_arr.each d
  
end

# on 5-23, figure out how to partition an integer.

p part_const(10, 3, 2) # 4
p part_const(10, 3, 0) # 8
p part_const(10, 4, 1) # 2
p part_const(10, 5, 3) # 4


