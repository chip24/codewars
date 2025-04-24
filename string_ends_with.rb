# My code, which I did with no help at all, ranked 18 out of 3,577.  The top code was the simplest "str.end_with?(ending)".  I had forgotten about the end_with? method.

def solution(str, ending)
  end_length = ending.chars.length
  str[end_length * -1..-1] == ending || end_length == 0
end

p solution('abcde', 'cde')

def solution2(str, ending)
  #end_length = ending.chars.length
  str[ending.chars.length * -1..-1] == ending || ending.chars.length == 0
end

p solution2('abcde', 'cde')