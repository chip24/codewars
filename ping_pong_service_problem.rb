def service(score)
  score
end

p service('0:5')# 'second'# "when the score is 0:5 it should be second player's turn")
p service('5:5')# 'first'# "when the score is 5:5 it should be first player's turn")
p service('11:11')#'first'# "when the score is 11:11 it should be first player's turn")
p service('14:15')# 'second'# "when the score is 14:15 it should be second player's turn")