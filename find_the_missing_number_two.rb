
# None of the AI suggestions are working.  on 9-28 find another solution.


def find_number(start, stop, n)
  p full_arr = (start..stop).to_a
  p missing_arr = n.scan(/\d+/).map(&:to_i)

  missing_nums = full_arr - missing_arr

end
  
p find_number(1, 21, "1116122137143151617181920849510")

def find_missing_integer(start, stop, shuffled_string)
  # Calculate the expected sum of the range
  expected_sum = (start..stop).sum
  
  # Calculate the actual sum of the digits in the shuffled string
  actual_sum = shuffled_string.chars.map(&:to_i).sum
  
  # The missing integer is the difference between the expected and actual sums
  missing_integer = expected_sum - actual_sum
  
  missing_integer
end

# Example usage
start = 0
stop = 9
shuffled_string = "354067912"
missing_integer = find_missing_integer(start, stop, shuffled_string)
puts missing_integer  # Output: 8

p find_missing_integer(1, 21, "1116122137143151617181920849510")

def find_missing_integers(start_val, end_val, shuffled_string)
  # Generate the full range of numbers as strings
  full_range = (start_val..end_val).to_a.map(&:to_s)
  
  # Extract all possible numbers from the shuffled string
  extracted_numbers = []
  (0..shuffled_string.length - 1).each do |i|
    (i + 1..shuffled_string.length).each do |j|
      num = shuffled_string[i...j]
      extracted_numbers << num if full_range.include?(num)
    end
  end
  
  # Find the missing numbers by comparing the full range with the extracted numbers
  missing_numbers = full_range - extracted_numbers.uniq
  
  missing_numbers.map(&:to_i)
end

# Example usage
start_val = 3
end_val = 13
shuffled_string = "451011126789"
missing_integers = find_missing_integers(start_val, end_val, shuffled_string)
puts missing_integers  # Output: [13]
p find_missing_integers(1, 21, "1116122137143151617181920849510")