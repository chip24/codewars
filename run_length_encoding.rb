#I came up with this solution on my own except for using Copilot to find out how to use #scan to break the string into sections based on consecutive characters.  My solution is ranked 7th out of 138.

def rle_two(str)
  arr = []
  str.scan(/((.)\2*)/).map(&:first).map {|str|
    arr << [str[0],str.length]}
  arr.map {|arr| arr.reverse}
end

p rle_two('hello world!')
p rle_two('helloworld!')
p rle_two("WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW")



