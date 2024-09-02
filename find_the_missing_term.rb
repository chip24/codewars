def find_missing(sequence)
  diff_arr = sequence.each_cons(2).map {|a,b| b - a}
  diff_index = diff_arr.find_index {|item| diff_arr.count(item) == 1}
  diff = diff_arr.detect {|e| diff_arr.count(e) > 1}
  value_to_add = sequence[diff_index] + diff
  #the line below would add the new value to the original array
  #sequence.insert(diff_index +1, value_to_add)

end

p find_missing([1, 3, 5, 9, 11])
p find_missing([1, 2, 3, 4, 6, 7, 8, 9])
p find_missing([1, 3, 4, 5, 6, 7, 8, 9])

