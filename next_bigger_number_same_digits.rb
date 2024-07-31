# the code below works, but it times out on Codewars when dealing with bigger numbers.
=begin
def next_bigger(n)
  
  perm_arr = n.to_s.chars.permutation.to_a.map {|arr| arr.join.to_i}.uniq.sort

  n_index = perm_arr.find_index(n)
  if perm_arr.length > n_index
    perm_arr[n_index + 1]
  else
    return 0
  end 
end
=end

#p next_bigger("cat")
#puts next_bigger(123)
#puts next_bigger(8822)

def next_bigger_again(n)
  p digits = n.to_s.chars.map(&:to_i)
  if digits.length == 1
    return -1
  end
  last_two_digits_swapped = digits[-2..-1].reverse
  rest = digits[0..-3]
  p last_two_digits_swapped
  p rest
  new_bigger = (rest + last_two_digits_swapped).join.to_i
  puts new_bigger
  if new_bigger > n
    new_bigger
  else
  #elsif new_bigger < n || new_bigger == n
    -1
  end



  
  #next_higher = digits[0]
end
next_bigger_again(12)
next_bigger_again(123)
next_bigger_again(1234)
next_bigger_again(987654321)
next_bigger_again(111)
next_bigger_again(9)
next_bigger_again(531)
next_bigger_again(351)

