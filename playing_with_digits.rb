def dig_pow(n, power)
  n_arr = n.to_s.chars.map(&:to_i)
  p n_arr
  consec_pow_arr = []
  n_arr.each do |digit|
    consec_pow_arr << digit**power
    power +=1
  end
  p consec_pow_arr
  cons_power_sum = consec_pow_arr.sum()
  p cons_power_sum
  k = cons_power_sum % n
  p k
  if k == 0 
    return cons_power_sum / n
  else
    return -1
  end

end

dig_pow(89,1)
dig_pow(92,1)
dig_pow(695, 2)
dig_pow(46288, 3)
