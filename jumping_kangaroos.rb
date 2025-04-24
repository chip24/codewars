def kangaroo(kanga1, rate1, kanga2, rate2)
  return false if rate1 - rate2 == 0
  p t = (kanga2 - kanga1) / (rate1 - rate2)
  t > 0 ? true : false
end

p kangaroo(0, 3, 4, 2)
p kangaroo(0, 9, 16, 4)
p kangaroo(-1, 3, 0, 2)
p kangaroo(0, 3, 1, 3) 
p kangaroo(0, 5, 10, 2)

# Figure out the logic of Copilot on 4-25
