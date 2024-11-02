# Mine was the shortest in CodeWars!  My original idea almost worked but I didn't know about #repeated_permutation (only #permutation) until Gemini told me.


def rolldice_sum_prob(sum, dice_amount)
  (1..6).to_a.repeated_permutation(dice_amount).to_a.map {|arr| arr.sum}.count(sum)/(6 ** dice_amount).to_f

end

p rolldice_sum_prob(8,3)
p rolldice_sum_prob(11,2)


 
 
  