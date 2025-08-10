# This kata was harder than level 6 should be.  I needed to use Wikipedia to find out that there is a limited number of polydivisible numbers and the largest one has 25 digits. I then needed to use AI to find the code to find the polydivisible numbers.  After that, I was able to finish the code to find the next polydivisible number greater than the argument "num". After I upvoted my code as best practices, my code was ranked 1 out of 19.

def next_num(num)
  numbers = []
  previous = (1...10).to_a
  new = []
  digits = 2

  until previous.empty?
    numbers << previous.dup
    previous.each do |n|
      (0...10).each do |j|
        number = n * 10 + j
        new << number if number % digits == 0
      end
    end
    previous = new
    new = []
    digits += 1
  end
  sorted_arr = numbers.flatten.sort 
  sorted_arr.find { |n| n > num}
end

# on 8-4, refactor the code to remove the base and have it just be 10 all the time because the code seems to be working

#p next_num(10, 123220)



p next_num(0) # 1)
p next_num(10) # 12)
p next_num(11) # 12)
p next_num(1234) # 1236)
p next_num(123220) # 123252)

