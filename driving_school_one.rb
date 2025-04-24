# My code was ranked 5 out of 94.  I only needed to Google details about using the #reject method.

def passed(list)
  p pass_list = list.reject {|num| num > 18 }
  if pass_list.length == 0 
    'No pass scores registered.'
  else
    (pass_list.sum.to_f/ pass_list.length).round
  end
end

#p passed([10,10,10,18,20,20])
#p passed([21,22,24])
#p passed([3,22,9,13,20,18,2,14,20,8,23,12,7,21,21,19,20,11,18,7,13,22,11,20,9])
#p passed([19,16,8,11,25,10,29,22,23])
#p passed([20,20,21,22,11,12,13,14,10,9,8,7,11,10,20,21,22])
p passed([17,31,5,23,12,18,18,6,25,19,19])
#p passed([5,11,21,16,20,24,19,28,18,15,10,12,16,17,21,25,24,12,21,18,17])