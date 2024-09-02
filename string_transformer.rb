#I submitted version 2 to Codewars but I originally tried to replace {|word| word.swapcase} with {&:swapcase} and it didn't work because it should have been regular parentheses (&:swapcase) instead of curly braces.  I made the change in version 3 and it worked.  The top Codewars answer was very similar to version 3

#def string_transformer(str)
#  str.split(/\b/).reverse.map(&:swapcase).join
#end


def string_transformer(str)
  word_arr = str.split(" ").map {|word| word.swapcase}
  #word_arr[0],word_arr[-1] = word_arr[-1],word_arr[0]
  word_arr.reverse.join(" ")
end

#p string_transformer("Example Input")
#p string_transformer("Nxwuq Homq Las Vxud Qxqxw Iymb")

def string_transformer2(str)
  str.split(/(\s+)/).map {|word| word.swapcase}.reverse.join
end

#p string_transformer2("Example Input")
#p string_transformer2("Nxwuq Homq Las Vxud Qxqxw Iymb")
#p string_transformer2("You Know When  THAT  Hotline Bling")

def string_transformer3(str)
  str.split(/(\s+)/).map(&:swapcase).reverse.join
end

p string_transformer3("Example Input")
p string_transformer3("Nxwuq Homq Las Vxud Qxqxw Iymb")
p string_transformer3("You Know When  THAT  Hotline Bling")