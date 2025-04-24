#My code was ranked 10 out of 207.  I just looked up the each_cons method again to see the syntax.

def elevator_distance(arr)
  diff_arr = []
  arr.each_cons(2) {|a,b| diff_arr << (b-a).abs }
  diff_arr.sum
end

p elevator_distance([5,2,8])
p elevator_distance([1,2,3])
p elevator_distance([7,1,7,1])