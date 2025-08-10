def next_num(base, num)
  numbers = []
  previous = (1...base).to_a
  new = []
  digits = 2

  until previous.empty?
    numbers << previous.dup
    previous.each do |n|
      (0...base).each do |j|
        number = n * base + j
        new << number if number % digits == 0
      end
    end
    previous = new
    new = []
    digits += 1
  end

  num_arr = numbers.flatten << num
  sorted_arr = num_arr.sort
  num_index = sorted_arr.index(num)
  sorted_arr[num_index + 1]
end

# on 8-4, refactor the code to remove the base and have it just be 10 all the time because the code seems to be working

p next_num(10, 123220)



p next_num(0) # 1)
p next_num(10) # 12)
p next_num(11) # 12)
p next_num(1234) # 1236)
p next_num(123220) # 123252)