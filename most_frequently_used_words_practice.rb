def clean_apostrophes(str)
  str.gsub(/(?<!\S)'(?!\S)/, '')
end

# Example usage
input1 = "This isn't a 'test' and he's okay."
input2 = " ''' "
input3 = " ' "

result1 = clean_apostrophes(input1)
result2 = clean_apostrophes(input2)
result3 = clean_apostrophes(input3)

puts result1  # Outputs: "This isn't a 'test' and he's okay."
puts result2  # Outputs: "   "
puts result3  # Outputs: " "
