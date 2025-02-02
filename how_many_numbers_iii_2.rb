def find_all(n, k)
  # Helper method to check if an array is in non-decreasing order
  def non_decreasing_order?(arr)
    (0...arr.length-1).all? { |i| arr[i] <= arr[i+1] }
  end

  # Helper method to generate digit combinations that sum to n
  def generate_combinations(current_combination, start_digit, k, n, combinations)
    if k == 0
      combinations << current_combination.clone if n == 0 && non_decreasing_order?(current_combination)
      return
    end

    (start_digit..9).each do |digit|
      break if digit > n
      current_combination.push(digit)
      generate_combinations(current_combination, digit, k-1, n-digit, combinations)
      current_combination.pop
    end
  end

  combinations = []
  generate_combinations([], 1, k, n, combinations)

  ans_arr = combinations.map { |combo| combo.join.to_i }
  p ans_arr

  if ans_arr.empty?
    return []
  else
    return [ans_arr.length, ans_arr.min, ans_arr.max]
  end
end

# Example usage
k = 6
n = 35
result = find_all(n, k)
puts result.inspect  # This should be much faster and provide the correct output


