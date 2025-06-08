def candies_to_buy(kids)
  factorial = 1
  (1..kids).each do |n| 
    factorial *= n 
  end
  p "***factorial is #{factorial}***"
  arr = []
  (1..kids).each do |i|
    p i
    arr << factorial / i
  end
  p arr
  kid_hash = {}
  kid_arr = (2..kids).to_a
  arr.reverse_each do |int|
    kid_arr.each do |kid|
      if int % kid == 0
        p "#{int} is perfectly divisible by #{kid}"
        kid_hash[int] = kid
      end
    end
    p kid_hash
  end







end

# on 5-18 check the logic of the hash

#p candies_to_buy(1) #  1)
#p candies_to_buy(2) #  2)
#p candies_to_buy(5) #  60)
p candies_to_buy(6) #  60)
#p candies_to_buy(9) #  2520)
#p candies_to_buy(10) #  2520)

