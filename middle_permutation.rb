def middle_permutation(string)
  p string_arr = string.chars
  p perm_arr = string_arr.permutation(string_arr.length).to_a.map {|arr| arr.join}.sort
  perm_arr.length.odd? ? middle_index = perm_arr.length / 2 : middle_index = (perm_arr.length / 2) - 1
  p perm_arr[middle_index]

end

# as of 12-9, only this code works, but it's still timing out.  Fix it on 12-10
middle_permutation("abcde")
test_arr = ["abc", "acb", "bac", "bca", "cab", "cba", "ccc"]
p middle_index = test_arr.length / 2 
p test_arr[middle_index]

