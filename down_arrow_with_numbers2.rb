def generate_number(digit_count)
  sequence = (1..9).to_a + [0] # Define the repeating sequence
  number = sequence.cycle.take(digit_count).join # Cycle and take the needed digits
  full_num = number + number[0..-2].reverse 
end

puts generate_number(5)
puts generate_number(11) # Outputs: 12345678901





def custom_range(n)
  arr = []
  sequence = []
  digits = (1..9).to_a + [0]

  n.times do |i|
    sequence << digits[i % digits.size]
  end

  sequence

  while n >= 1 do 
    sequence
    seq_down = sequence.reverse
    full_arr = sequence + seq_down
    arr << (full_arr.join).to_i
    n -= 1
  end
  arr
end

# Example usage

p custom_range(11)
