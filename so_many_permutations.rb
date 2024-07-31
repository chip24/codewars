# the code below was the top-rated on CodeWars and was a little better than mine
# def permutations(string)
#	string.chars.permutation.map(&:join).uniq
#end

# I could have alsoleft out "string.length" and just put uniq right after the brackets
# string.chars.permutation.to_a.map {|arr| arr.join}.uniq

def permutations(string)
  arr_of_arr = string.chars.permutation(string.length).to_a.map {| arr| arr.join }
  arr_of_arr.uniq
end

p permutations("cat")
p permutations("aabb")
