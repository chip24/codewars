# My code was ranked 12 out of 131.  It was a hassle to find a regex to group the substrings successfully.

def count_me(data)
  if data == nil || data.scan(/\D/).empty? == false
    return "" 
  else
    arr = data.scan(/((.)\2*)/).map(&:first)
    new_arr = []
    arr.each {|str| new_arr <<str.size.to_s + str.chr.to_s}
    new_arr.join
  end
end

p count_me('1123')
p count_me('1')
p count_me('211213')
p count_me('a123')
p count_me('')
p count_me(nil)

# on 5-3 tell Copilot its code isn't right and try to fix it. Also, get Sublime to open to type comit messages.

def group_consecutive_chars(str)
  #arr = str.chars.group_by {|char| char }.map {|key, group| group.join}.flatten
  #str.chars.group_by {|char| char}
  #str.scan(/((.)\2*)/)
  #str.scan(/(.)\1*/)
  #str.scan(/(?:.)\1*/)
  arr = str.scan(/((.)\2*)/).map(&:first)
  new_arr = []
  arr.each {|str| new_arr <<str.size.to_s + str.chr.to_s}
  new_arr.join
  #arr.each do  
end

# Example Usage
#p group_consecutive_chars("1123")   # Output: ["11", "2", "3"]
#p group_consecutive_chars("211213") # Output: ["2", "11", "2", "1", "3"]
#p group_consecutive_chars("333222111") # Output: ["333", "222", "111"]
