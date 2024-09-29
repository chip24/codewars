#Codewars really had a variety of answers and they were all different from each other.  Mine was easiest to understand

def beggars(values, n)
  if n == 0
    return []
  end
  result = values.group_by.with_index {|_,i| i % n }.values
  v_n_diff = n-values.count
  p v_n_diff
  if v_n_diff > 0
    v_n_diff.times {result.push([0])}
  end
  result.map(&:sum)
end

p beggars([1, 2, 3, 4, 5],1)
p beggars([1, 2, 3, 4, 5],2)
p beggars([1, 2, 3, 4, 5],3)
p beggars([1, 2, 3, 4, 5],6)
p beggars([1, 2, 3, 4, 5],0)
p beggars([51, 40, 44, 691, 74, 49, 684, 91, 854, 709, 487, 26, 7, 17, 2, 1, 2, 78], 20)