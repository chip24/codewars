#My code was ranked 13 out of 431.  

def difference_of_squares(n)
  ((1..n).sum ** 2) - ((1..n).map {|num| num ** 2}.sum) 
end

p difference_of_squares(10)