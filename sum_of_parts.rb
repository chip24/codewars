def parts_sums(ls)
  sum_arr = []
  if ls.size == 0
    return [0]
  else
    until ls.size == 0
     sum_arr << ls.sum
     ls.shift
    end
  end
  sum_arr << 0
end

#on 8-25 find out how to include zeros in the answer array

#p parts_sums([0, 1, 3, 6, 10])
#p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])
#p parts_sums([])

# Copilot optimized my original code.  Instead of removing elements, it ust substracted each number from the original total of all numbers

def parts_sums2(ls)
  sum_arr = []
  total_sum = ls.sum
  sum_arr << total_sum

  ls.each do |num|
    total_sum -= num
    sum_arr << total_sum
  end

  sum_arr
end

p parts_sums2([0, 1, 3, 6, 10])
p parts_sums2([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])
p parts_sums2([])
