plus = lambda {|num| num + num}

def seven(lmbda, number)
  puts lmbda.call(number)
end

seven(plus, 6)

def increment(x)
  x << "b"
end

y = "a"
increment(y)
puts y

def add(x, y)
  x = x + y
end

def two
  2
end

def three
  3
end

a = 3
b = add(three(), two())
puts a
puts b