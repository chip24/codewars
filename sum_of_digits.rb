def digital_root(n)
  if n.to_s.length == 1
    return n
  else
    num_arr = n.to_s.chars.map(&:to_i)
    sum = num_arr.sum
    digital_root(sum)
  end
end

digital_root(9)
digital_root(99)
digital_root(999)
digital_root(9999)