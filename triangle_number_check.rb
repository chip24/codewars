# My code was ranked 5 out of 354.  I Google to remember the syntax for #sqrt,to find the algorithm for a triangular number, and to get the best way to deal with the zero after the decimal in floats.

def is_triangle_number(number)
  return true if number == 0 || number == 1
  val = 8 * number + 1
  float_num = Math.sqrt(val)
  float_num == float_num.to_i 
end

p is_triangle_number(3) # true)
p is_triangle_number(5) # false)
p is_triangle_number(8) # false)
p is_triangle_number(10) # true)
p is_triangle_number(20) # false)
p is_triangle_number(1) # true)
p is_triangle_number(0) # true)
p is_triangle_number(779376) # true)
p is_triangle_number(995299) # false)
p is_triangle_number(785359) # false)
p is_triangle_number(776437) # false)
p is_triangle_number(1001820) # true)

#3,6,10,15,21

