def find_all(n, k)
  p [n,k]
  num_range = (10**(k-1))..(10**k-1)
  ans_arr = []
  digit = num_range.begin
  #num_range.each do |digit|
  while digit <= num_range.end
    sum = digit.to_s.chars.map {|str| str.to_i}.sum
    #puts "The sum of the digits in #{digit} is #{sum}"

    if sum == n && digit.to_s.chars.sort == digit.to_s.chars
      ans_arr << digit
      digit += 9 * (k-2)
    else
      digit += 1
    end
  end
  p ans_arr
  if ans_arr.length == 0
    return []
  else
    return [ans_arr.length, ans_arr[0],ans_arr[-1]]
  end
end

#p find_all(10, 3)
p find_all(35, 6)

