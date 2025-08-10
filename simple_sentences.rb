# My code was ranked 13 out of 1038.  I just Googled to find the regex to remove the commas and periods.

def make_sentence(parts)
  parts.join(" ").gsub(/\s+([.,])/, '\1').sub(/\.+$/, "") + "." 
end


p make_sentence(['hello', 'world'])# ('hello world.')
p make_sentence(['Quick', 'brown', 'fox', 'jumped', 'over', 'the', 'lazy', 'dog']) #'Quick brown fox jumped over the lazy dog.')
p make_sentence(['hello', ',', 'my', 'dear'])#'hello, my dear.')
p make_sentence(['one', ',', 'two', ',', 'three'])#'one, two, three.')
p make_sentence(['One', ',', 'two', 'two', ',', 'three', 'three', 'three', ',', '4', '4', '4', '4'])#'One, two two, three three three, 4 4 4 4.')
p make_sentence(['hello', 'world', '.'])#'hello world.')
p make_sentence(['Bye', '.'])#'Bye.')
p make_sentence(['hello', 'world', '.', '.', '.'])#'hello world.')
p make_sentence(['The', 'Earth', 'rotates', 'around', 'The', 'Sun', 'in', '365', 'days', ',', 'I', 'know', 'that', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'])#'The Earth rotates around The Sun in 365 days, I know that.')
