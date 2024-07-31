def zero(arg = nil)
  # the conditonal opeator below means if there is an arg then call the arg on the lambbda else return the integer
  arg ? arg.call(0) : 0
end

def one(arg = nil)
  arg ? arg.call(1) : 1
end

def two(arg = nil)
  arg ? arg.call(2) : 2
end

def three(arg = nil)
  arg ? arg.call(3) : 3
end

def four(arg = nil)
  arg ? arg.call(4) : 4
end

def five(arg = nil)
  arg ? arg.call(5) : 5
end

def six(arg = nil)
  arg ? arg.call(6) : 6
end

def seven(arg = nil)
  arg ? arg.call(7) : 7
end

def eight(arg = nil)
  arg ? arg.call(8) : 8
end

def nine(arg = nil)
  arg ? arg.call(9) : 9
end

def plus(num)
  -> (x) { x + num }
end

def minus(num)
  -> (x) { x - num }
end

def times(num)
  -> (x) { x * num }
end

def divided_by(num)
  -> (x) { x / num }
end

puts six(plus(three))         # Output: 9
puts six(minus(three))        # Output: 3
puts six(times(three))        # Output: 18
puts six(divided_by(three))   # Output: 2



