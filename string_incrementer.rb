def increment_string(input)
  split_arr = input.scan(/\d+|\D+/)
  if split_arr.length == 0
    return "1"
  elsif split_arr.length == 1
    split_arr << "1"
  else
    num_str = (split_arr[1].to_i + 1).to_s.rjust(split_arr[1].length, '0')
    split_arr[1] = num_str

  end
  split_arr.join

end

# on 9-30 find out how to deal with numbers in the middle of words.  Probably should just switch split_arr[1] to split_arr[-1]
p increment_string("foo")
p increment_string("foobar001")
p increment_string("foobar1")
p increment_string("foobar00")
p increment_string("foobar99")
p increment_string("")

