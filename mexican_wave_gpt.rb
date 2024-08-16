def manipulate_and_reinsert_spaces(original_str)
  # Step 1: Save the positions of the spaces
  space_positions = original_str.chars.each_index.select { |i| original_str[i] == ' ' }

  # Step 2: Remove the spaces
  string_without_spaces = original_str.delete(' ')

  # Step 3: Manipulate the string
  manipulations = [
    string_without_spaces.capitalize,
    string_without_spaces.downcase.chars.map.with_index { |char, i| i.even? ? char.upcase : char }.join,
    string_without_spaces.reverse.capitalize
  ]

  # Step 4: Reinsert the spaces into manipulated strings
  manipulations.map do |str|
    str_with_spaces = str.dup
    space_positions.each { |pos| str_with_spaces.insert(pos, ' ') }
    str_with_spaces
  end
end

# Test the function

p manipulate_and_reinsert_spaces(" gap ")

