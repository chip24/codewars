# My code was ranked 7 out of 150.  I needed to Google some hints to know how to get the digits to start over after 0 and to get the numbers formatted correctly with "\n".

def generate_number(n)
  arr = []
  @original_dig_ct = n
  if n <= 0
    return ""
  else
    sequence = (1..9).to_a + [0]
    while n >= 1 do
      number = sequence.cycle.take(n).join
      spaces = @original_dig_ct - n 
      arr << full_num = (" " * spaces) + number + number[0..-2].reverse 
      n -= 1
    end
  end
   arr.join("\n")
end

puts generate_number(-5)
puts generate_number(5)
p generate_number(11) # Outputs: 12345678901