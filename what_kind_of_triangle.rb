#My code is much longer than the others on Codewars.  Most did not bother with the law of cosines. Instead, they sorted the sides from smallest to pargest, checked the squares of the sides, and determined that the triangle was: acute if a^2 + b^2 > c^2, right if a^2 + b^2 = c^2, or obtuse if a^2 + b^2 < c^2.
=begin
def triangle_type (a, b, c)
  return 0 unless a+b>c && b+c>a && c+a>b
  
  a,b,c = [a,b,c].sort.map{ |n| n ** 2 }
  return 1 if a + b > c
  return 2 if a + b == c
  return 3 if a + b < c
end
=end


def triangle_type(a,b,c)
  #return 0 unless a.is_a?(Numeric) && b.is_a?(Numeric) && c.is_a?(Numeric)
  
  return 0 if a.to_i == 0 || b.to_i == 0 || c.to_i == 0
  aa = a.to_f
  bb = b.to_f
  cc = c.to_f

  def to_degrees(radians)
    radians * 180 / Math::PI
  end
 
 begin
    angle_a = to_degrees(Math.acos((bb**2 + cc**2 - aa**2)/(2*bb*cc)))
    angle_b = to_degrees(Math.acos((aa**2 + cc**2 - bb**2)/(2*aa*cc)))
    angle_c = to_degrees(Math.acos((aa**2 + bb**2 - cc**2)/(2*aa*bb)))
  rescue Math::DomainError => e
    return 0
  end
  
  angle_arr = [angle_a, angle_b, angle_c]
  angle_arr
  angle_arr.sum
  angle_arr.max.to_i
  round_max = angle_arr.max.round
  if angle_arr.sum < 179 || angle_arr.sum > 181 || angle_arr.max.to_i >= 180
    return 0
  elsif angle_arr.max.to_i < 90
    return 1
  elsif round_max == 90
    return 2
  else
    return 3
  end
end

# on 9-16 figure out how to deal with arguments that are not numbers
#p triangle_type(7,3,2)
#p triangle_type(2,4,6)
#p triangle_type(8,5,7)
#p triangle_type(3,4,5)
#p triangle_type(7,12,8)
#p triangle_type(1,2,3)
#p triangle_type(477.258, 480.826, 53.267)
#p triangle_type(7.99999, 4, 4)
#p triangle_type(751.149, 443.167, 870.391)
p triangle_type(3,3,0)
#p triangle_type(871.762, 869.677, 60.083)
#p triangle_type(247.996, 426.487, 494.837)