#My code was ranked 4 out of 54.  I did all this by myself except I had to look up the equation to find out how to get the value of all the angles in a shape. The only code ranked highher than mine used a ternatary operator instead of the regular if...else syntax.

def describe_the_shape(angles)
  if angles <= 2 
    "this will be a line segment or a dot"
  else
    "This shape has #{angles} sides and each angle measures #{((angles - 2) * 180) / angles}"
  end
end

p describe_the_shape(6)
p describe_the_shape(3)
p describe_the_shape(8)
p describe_the_shape(90)
p describe_the_shape(2)
p describe_the_shape(1)
