# I needed ChatGPT to help me.  I submitted score2 and was ranked 8 out of 69.  The regular #score function ran too slow, so I switched to score2.  The top code was one line and was based on the same exponent idea as #score2: (2 ** n.bit_length) - 1 

def score(n)
  result = 0
  (0..n).each do |i|
    result |= i
  end
  result
end

p score(49)
p score(1000000)
p score(5)

def score_visual(n)
  result = 0
  puts "Calculating scORe for n = #{n}"
  puts "-------------------------------------"
  puts " i  | i (bin)     | result (before) | result (after)"
  puts "----|-------------|------------------|----------------"

  (0..n).each do |i|
    before = result
    result |= i
    puts "#{i.to_s.rjust(2)}  | #{i.to_s(2).rjust(9, '0')} | #{before.to_s(2).rjust(16, '0')} | #{result.to_s(2).rjust(16, '0')}"
  end

  puts "-------------------------------------"
  puts "Final scORe for #{n} = #{result} (#{result.to_s(2)} in binary)"
end

# Try it out
#score_visual(10)
# Or use score_visual(10) to see a larger example

def score2(n)
  power = 1
  while power <= n 
    power <<= 1
  end
  power - 1
end

p score2(49)

