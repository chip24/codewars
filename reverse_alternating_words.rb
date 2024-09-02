#Mine was the same as the top answer in Codewars excpt the top answer didn't use (' ') after split.

def reverse_alternate(string)
  string.split(' ').map.with_index {|word, idx| idx.odd? ? word.reverse : word }.join(' ')
end

p reverse_alternate("The quick brown fox jumped over the lazy dog.")