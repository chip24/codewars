def combos(n)
end

def expand(n, max = n)
  return [[]] if n == 0
  [max, n].min.downto(1).flat_map do |i|
    expand(n-i, i).map{|rest| [i, *rest]}
  end
end

p expand(6)



