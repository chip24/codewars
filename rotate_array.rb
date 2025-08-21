# My code was ranked 5 out of 7 after I upvoted it.  I just had to lookup the syntax of #rotate.

def rotate(array, n)
  array.rotate(count = -n)
end

# start on page 345 on LERTBD 
  p rotate([1, 2, 3, 4, 5], 1)# [5, 1, 2, 3, 4])
  p rotate([1, 2, 3, 4, 5], 2)# [4, 5, 1, 2, 3])
  p rotate([1, 2, 3, 4, 5], 3)# [3, 4, 5, 1, 2])
  p rotate([1, 2, 3, 4, 5], 4)# [2, 3, 4, 5, 1])
  p rotate([1, 2, 3, 4, 5], 5)# [1, 2, 3, 4, 5])

  p rotate([1, 2, 3, 4, 5], 0)# [1, 2, 3, 4, 5])

  p rotate([1, 2, 3, 4, 5], -1)# [2, 3, 4, 5, 1])
  p rotate([1, 2, 3, 4, 5], -2)# [3, 4, 5, 1, 2])
  p rotate([1, 2, 3, 4, 5], -3)# [4, 5, 1, 2, 3])
  p rotate([1, 2, 3, 4, 5], -4)# [5, 1, 2, 3, 4])
  p rotate([1, 2, 3, 4, 5], -5)# [1, 2, 3, 4, 5])

  p rotate(['a', 'b', 'c'], 1)# ['c', 'a', 'b'])
  p rotate([1.0, 2.0, 3.0], 1)# [3.0, 1.0, 2.0])
  p rotate([true, true, false], 1)# [false, true, true])

 

  p rotate([1, 2, 3, 4, 5], 7)# [4, 5, 1, 2, 3])
  p rotate([1, 2, 3, 4, 5], 11)# [5, 1, 2, 3, 4])
  p rotate([1, 2, 3, 4, 5], 12478)# [3, 4, 5, 1, 2])