def next_smaller(n)
  return -1 if n.to_s.length == 1
  digit_arr = n.to_s.chars.map {|char| char.to_i}
  if digit_arr[-1] < digit_arr[-2]
    puts "TRUE"
    digit_arr[-1],digit_arr[-2] = digit_arr[-2],digit_arr[-1]
    digit_arr.join.to_i
  elsif digit_arr == digit_arr.sort
    puts "THE ARRAY IS SORTED AND THERE'S NO SMALLER"
    return -1
  else
    puts "NUMBER SWAPPINg CALLED ON #{n}"
    i = digit_arr.length - 2
    i -= 1 while i >= 0 && digit_arr[i] <= digit_arr[i + 1]

    if i >= 0
      j = digit_arr.length - 1
      j -= 1 while digit_arr[j] >= digit_arr[i]
      digit_arr[i],digit_arr[j] = digit_arr[j],digit_arr[i]
    end
    digit_arr = digit_arr[0..i] + digit_arr[i + 1..-1].reverse
    smaller = digit_arr.join.to_i
    if smaller.to_s.length < n.to_s.length
      return -1
    else
      smaller
    end
  end
end


# on November 17, figure out how to deal with very large numbers so that it doesn't time out
p next_smaller(531)
p next_smaller(21)
p next_smaller(2071)
p next_smaller(9)
p next_smaller(135)
p next_smaller(513)
p next_smaller(414)
p next_smaller(1234567908)
p next_smaller(1027)