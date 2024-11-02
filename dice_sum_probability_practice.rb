def dice_probability(num_dice, target_sum)
  total_outcomes = 6**num_dice
  favorable_outcomes = 0

  # Iterate over all possible combinations of dice rolls
  (1..6).to_a.repeated_permutation(num_dice) do |roll|
    if roll.sum == target_sum
      favorable_outcomes += 1
    end
  end

  probability = favorable_outcomes.to_f / total_outcomes
  return probability
end

# Example usage:
puts dice_probability(2, 8)  # Output: 5/36
puts dice_probability(3, 8)  # Output: 7/72