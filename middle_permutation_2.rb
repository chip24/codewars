def middle_permutation(string)
  p string_arr = string.chars.sort
  p n = string_arr.length


  string_arr.length.odd? ? middle_char = string_arr[n / 2] : middle_char = string_arr[(n / 2) - 1]
  puts middle_char
  #p perm_arr = string_arr.permutation(string_arr.length).to_a.map {|arr| arr.join}.sort
  #perm_arr.length.odd? ? middle_index = perm_arr.length / 2 : middle_index = (perm_arr.length / 2) - 1
  #p perm_arr[middle_index]

end

# on 12-9 figure out why it timed out
#middle_permutation("abcd") # expected "bdca"
#middle_permutation("abcdx") # expected "cbxda"
#middle_permutation("abcdxg") # expected "cxgdba"
middle_permutation("abcdxgz") # expected "dczxgba"
middle_permutation("abcxgz")
middle_permutation("abxgz")
