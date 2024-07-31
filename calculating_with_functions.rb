#class Fixnum
#  alias_method :minus, :-
#end

def zero
  0
end
def one
  1
end
def two
  2
end
def three
  3
end
def four
  4
end
def five
  5
end
def six(func = nil)
  puts "You called #{func}"
  6
end
def seven(func = nil)
  puts "You called #{func}"
  7
end
def eight
  8
end
def nine
  9
end
def plus(x, y)
  x = x + y
end
def minus(x, y)
  x = x - y
end
def times(x, y)
  x = x * y
end
def divided_by(x, y)
  x = x / y
end

#puts seven(plus(six))
puts plus(seven, six)
puts minus(seven, six)
puts times(seven, six)
puts divided_by(seven, six)
