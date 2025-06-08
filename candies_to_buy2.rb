def candies_to_buy(kids)
  p kid_arr = (1..kids).to_a
  all_factorials = []
  return 1 if kids == 1
 
  kid_arr.each do |child|
    factorial = 1
    (2..kids).each do |num| 
      
      all_factorials << factorial *= num 
      kids -= 1
  end
  end

  p all_factorials
  kid_hash = {}

  all_factorials.each do |total|
    kid_arr.each do |kid|
      if total % kid == 0  
        kid_hash[total] = kid
      end
    end
  end

  kid_hash



     

end

# On 5-19 figure out incorrect logic.  Not all permutations are in all_factorials

#p candies_to_buy(1) #  1)
#p candies_to_buy(2) #  2)
#p candies_to_buy(5) #  60)
p candies_to_buy(6) #  60)
#p candies_to_buy(9) #  2520)
#p candies_to_buy(10) #  2520)