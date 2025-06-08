# Solve was ranked 11 out of 329 and solve2 was ranked 10 out of 329.  I needed no help.  The top code was one line: a.delete(b) + b.delete(a).

def solve(a, b)
  a_arr = a.chars.to_a
  b_arr = b.chars.to_a
  ((a_arr - b_arr) + (b_arr - a_arr)).join
end

p solve("xyab","xzca") #"ybzc")
p solve("xyabb","xzca") #"ybbzc")
p solve("abcd","xyz") #"abcdxyz")
p solve("xxx","xzca") #"zca")

def solve2(a, b)
  a_arr = a.chars
  b_arr = b.chars
  ((a_arr - b_arr) + (b_arr - a_arr)).join
end

p solve2("xyab","xzca") #"ybzc")
p solve2("xyabb","xzca") #"ybbzc")
p solve2("abcd","xyz") #"abcdxyz")
p solve2("xxx","xzca") #"zca")

