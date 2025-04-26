# My code was ranked 4 out of 53.  I used Copilot to find a math algorithm to avoid a brute force solution.

def kangaroo(kanga1, rate1, kanga2, rate2)
  return false if rate1 - rate2 == 0 || rate2 >= rate1
  t = (kanga2 - kanga1).to_f / (rate1 - rate2)
  t > 0 && t % 1 == 0
end

#p kangaroo(0, 3, 4, 2)
p kangaroo(0, 9, 16, 4) #wrong - false
#p kangaroo(-1, 3, 0, 2)
#p kangaroo(0, 3, 1, 3) 
#p kangaroo(1, 3, 0, 3)   # kanga1 > kanga2 && rate1 == rate2
#p kangaroo(0, 2, 5, 3)   # kanga1 < kanga2 && rate1 <= rate2
#p kangaroo(1571, 4240, 9023, 4234)
p kangaroo(-1571, 4240, 9023, 4234) #wrong - false
#p kangaroo(-7855, 4240, 9023, 4234)
#p kangaroo(43, 5, 49, 3)
#p kangaroo(9023, 4240, 1571, 4234)
#p kangaroo(129, 15, 147, 9)
#p kangaroo(129, 15, 147, 90)
#p kangaroo(0, 2, 100000, 1)
#p kangaroo(72893, 11125, 24432, 4202)
p kangaroo(13613, 299, 65130, 73) #wrong - false

# Figure out the logic of Copilot on 4-25
