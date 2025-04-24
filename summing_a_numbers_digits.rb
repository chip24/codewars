# My code was ranked 22 out of 2,336.  I didn't need to Google anything. The top code was simpler:   number.abs.digits.sum


def sum_digits(number)
  number.to_s.chars.map {|char| char.to_i.abs}.sum
end

p sum_digits(-32)