#The top answer on Codewars was not super short. It's below.

=begin
def mixed_fraction(string)
  improper = Rational(*(string.split('/').map(&:to_i)))
  integer  = improper.to_i
  fraction = improper - integer
  
  return "#{integer}"  if (fraction).numerator == 0
  return "#{fraction}" if integer == 0
  "#{integer} #{fraction.abs}"
end
=end

def mixed_fraction(s)
  num_arr = s.split("/").map {|arr| arr.to_i}
  if num_arr[1] == 0
    raise ZeroDivisionError, "You cannot divide by zero." 
  elsif num_arr[0] == 0
    return "0"
  else
  integer = (num_arr[0].fdiv(num_arr[1])).to_i
  modulo = num_arr[0].abs % num_arr[1].abs
  
end
  if integer == 0
    Rational(num_arr[0],num_arr[1]).to_s
    #fraction.to_s
  elsif modulo == 0
    integer.to_s
  else
    fraction = Rational(modulo,num_arr[1].abs)
    integer.to_s + " " + fraction.to_s
end
end

#p mixed_fraction('3/0')
p mixed_fraction('42/9') # works
p mixed_fraction('11/6') # works
p mixed_fraction('6/3') # works
p mixed_fraction('4/6') # works
p mixed_fraction('4/-6') # works
p mixed_fraction('0/18891') # works
p mixed_fraction('-10/7') # works
p mixed_fraction('10/-7') # works
p mixed_fraction('-22/-7') # works