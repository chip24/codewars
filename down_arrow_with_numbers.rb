def get_a_down_arrow_of(n)
  arr = []
  digits = (1..9).to_a + [0]
  while n >= 1 do 
    n_up = digits[n % digits.size]
    arr << n_up
    #n_down = n_up.reverse
    #full_arr = n_up + n_down
    #arr << (full_arr.join).to_i
    n -= 1
  end
  arr
end

p get_a_down_arrow_of(5)
p get_a_down_arrow_of(11)

# on 2-26 figure out how to make digits over 9 start over at 0 and how to indent the integers.

