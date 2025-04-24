# My code was ranked 3 out of 57.  For some reason, the other code people submitted did not include the Point and Circle classes.

class Point 
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x 
    @y = y  
  end
end


class Circle
  attr_accessor :point, :radius 

  def initialize(point, radius)
    @point = point
    @radius = radius
  end
end

a = Circle.new(Point.new(10, 60), 11)
b = Circle.new(Point.new(40, 20), 7)

p a 
p b 

def distance(a, b)
  x_diff = a.point.x - b.point.x
  y_diff = a.point.y - b.point.y

  dist = Math.sqrt(x_diff**2 + y_diff**2) - (a.radius + b.radius)
  dist <= 0 ? 0 : dist


end

p distance(a,b)

#d = sqrt((x2 - x1)^2 + (y2 - y1)^2). 
#The distance between the circles is: distance = d_center - (r1 + r2). 
#If distance > 0, the circles are separated.
#If distance = 0, the circles are tangent.
#If distance < 0, the circles overlap. 
#distance = d_center - (r1 + r2)