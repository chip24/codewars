# The grayed out code below worked but was too slow.  I used CoPilot to help me refactor it to make it faster.  The resulting code uses factorials and something called combinatorial mathmatics. My code ranked 10th of 277 in CodeWars.

#def list_position(word)
#  word.chars.permutation.to_a.sort.index(word.chars) + 1
#end

#p list_position("QUESTION")
#p list_position("BEEKKEEPER")

def factorial(n)
  (1..n).reduce(1, :*)
end

def list_position(word)
  chars = word.chars.sort
  rank = 1
  word.chars.each_with_index do |char, i|
    pos = chars.index(char)
    rank += pos * factorial(chars.size - 1) / char_count(chars)
    chars.delete_at(pos)
  end
  rank
end

def char_count(chars)
  counts = chars.tally
  counts.values.reduce(1) { |acc, count| acc * factorial(count) }
end

# Example usage
puts list_position("A")
puts list_position("ABAB")       # Expected output: 2
puts list_position("AAAB")       # Expected output: 1
puts list_position("BAAA")       # Expected output: 4
puts list_position("QUESTION")   # Expected output: 24572
puts list_position("BOOKKEEPER") # Expected output: 10743


