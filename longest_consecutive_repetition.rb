# I pasted the top CodeWars answer below as longest_repetition2 in order to test it out. I still don't know exactly how #chunk and &:itself work because they return an enumerator. Another top answer was similiar to mine but used scan instead of gsub and rescue after arr instead of return in an if statement at the beginning

def longest_repetition(chars)
  #chars.scan(/(\w)\l*/)
  if chars.length == 0
    return ["", 0]
  end
  long_cons = chars.gsub(/(.)\1*/).to_a.max_by(&:length)
  arr = [long_cons[0],long_cons.length]
end

# on 9-9 figure out how to deal with empty string
p longest_repetition("aaaabb")
p longest_repetition("bbbaaabaaaa")
p longest_repetition("")

def longest_repetition2(string)
  max = string
          .chars
          .chunk(&:itself)
          .map(&:last)
          .max_by(&:size)
  
  max ? [max[0], max.size] : ["", 0]
end

p longest_repetition2("aaaabb")
p longest_repetition2("bbbaaabaaaa")
p longest_repetition2("")





