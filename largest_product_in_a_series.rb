#I solved this one with no help.  The top CodeWars answers is below.

#def greatest_product(n)
#  n.chars.each_cons(5).map { |a| a.map(&:to_i).reduce(:*) }.max
#end

def greatest_product(n)
  prod_hash = {}
  num_arr = n.chars.map {|s| s.to_i}
  until num_arr.length < 5
    prod_hash[num_arr.take(5).join] = num_arr.take(5).inject(:*)
    num_arr.shift()
  end
  prod_hash.values.max
  #.key(prod_hash.values.max)
end

p greatest_product("123834539327238239583")
