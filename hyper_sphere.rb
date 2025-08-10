# My code was ranked 8 out of 1410 after I upvoted it as best practices.  I only Googled to find out if there was a way to sum to squares in one step but found out two steps was probably better.

def in_sphere?(coords, radius)
  return true if coords.empty?
  coord_sum = coords.map {|coord| coord ** 2 }.sum
  radius_squared = radius ** 2
  coord_sum <= radius_squared ? true : false
end

# in LERTBD start on page 258 on August 5th

p in_sphere?([0.5, 0.5], 1)# true)
p in_sphere?([0.5, 0.5, 0.5], 1)# true)
p in_sphere?([0.5, 0.5, 0.5, 0.5, 0.5], 1)# false)
p in_sphere?([1, 0], 1)# true)
p in_sphere?([3, 0], 3)# true)
p in_sphere?([1, 0, 0.1], 1)# false)
p in_sphere?([3, 4, 5], 6)# false)
p in_sphere?([], 1)# true)
p in_sphere?([0.5, 0.5, -0.5, -0.5, -0.5], 2)# true)
p in_sphere?([0, 0, 0, 0, 0], 0)# true)
p in_sphere?([0.1, -2, -3], 0)# false)

