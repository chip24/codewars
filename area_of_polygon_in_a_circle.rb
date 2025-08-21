# My code was ranked 2 out of 80 after I upvoted it. I Google to find the algorithm to find the area of a polygon in a circle and to remember the syntax for pi and sine in Ruby.

def area_of_polygon_inside_circle(circle_radius, number_of_sides)
  triangle_area = 0.5 *  (number_of_sides * (circle_radius ** 2))
  sine = Math.sin((2 * Math::PI) /number_of_sides)
  (triangle_area * sine).round(3)
end

# on 8-12 start on page 299 of LERTBD and figure out the algorithm for this kata.
p area_of_polygon_inside_circle(3, 3)#.to be_within(0.0001).of(11.691)
p area_of_polygon_inside_circle(2, 4)#.to be_within(0.0001).of(8)
p area_of_polygon_inside_circle(2.5, 5)#.to be_within(0.0001).of(14.86)
p area_of_polygon_inside_circle(3, 3) # returns 11.691

p area_of_polygon_inside_circle(5.8, 7) # returns 92.053

p area_of_polygon_inside_circle(4, 5) 
