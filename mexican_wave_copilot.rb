def manipulate_string_with_spaces(str)
  # Step 1: Find all spaces and save their positions
  space_positions = []
  str.chars.each_with_index do |char, index|
    space_positions << index if char == ' '
  end
  p space_positions
  # Step 2: Remove the spaces from the string
  str_without_spaces = str.gsub(' ', '')

  # Step 3: Manipulate the string (capitalize each character in turn)
  manipulated_strings = []
  str_without_spaces.length.times do |i|
    manipulated_str = str_without_spaces.dup
    manipulated_str[i] = manipulated_str[i].upcase
    manipulated_strings << manipulated_str
  end

  # Step 4: Add the spaces back to their original positions
  manipulated_strings.map! do |manipulated_str|
    space_positions.each do |pos|
      manipulated_str.insert(pos, ' ')
    end
    manipulated_str
  end

  manipulated_strings
end

# Example usage
input_str = " gap "
result = manipulate_string_with_spaces(input_str)
puts result.inspect
# Output: [" Gap ", " gAp ", " gaP "]
