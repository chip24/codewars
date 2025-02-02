def decompose(n)
  def find_solution(target, max_num)
    return [0] if target == 0
    return nil if target < 0 || max_num <= 0
    
    # Try including max_num if its square fits in target
    if max_num * max_num <= target
      solution = find_solution(target - max_num * max_num, max_num - 1)
      if solution
        return solution + [max_num]
      end
    end
    
    # Try without max_num
    find_solution(target, max_num - 1)
  end

  # We need n^2 - (n-1)^2 = remainder
  target = n * n - (n-1) * (n-1)
  solution = find_solution(target, n-1)
  
  # If we found a solution, prepend n-1 and return it
  return solution ? solution[1..] + [n-1] : nil
end

p decompose(50)    # [1, 3, 5, 8, 49]
p decompose(44)    # [2, 3, 5, 7, 43]
p decompose(625)   # [2, 5, 8, 34, 624]
p decompose(5)     # [3, 4]
p decompose(7100)  # [2, 3, 5, 119, 7099]




