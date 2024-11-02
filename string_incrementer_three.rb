# I feel like my code is very clear and relatively short.  The top answer on CodeWars below is super short. #succ returns the successor to the string

# def increment_string(input)
#  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
#end


def increment_string(input)
  split_arr = input.scan(/\d+|\D+/)
  if split_arr.length == 0
    return "1"
  elsif split_arr[-1].match?(/[[:alpha:]]/)
    split_arr << "1"
  else
    num_str = (split_arr[-1].to_i + 1).to_s.rjust(split_arr[-1].length, '0')
    split_arr[-1] = num_str

  end
  split_arr.join

end

p increment_string("foo")
p increment_string("foobar001")
p increment_string("foobar1")
p increment_string("foobar00")
p increment_string("foobar99")
p increment_string("")
p increment_string("1")
p increment_string("009")
p increment_string("f00bar")

