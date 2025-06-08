# My code was ranked 11 out of 101, but I thought it would be ranked higher.  I wasted a lot of time on versions 1 and 2 before realizing I just needed to find the least common multiple and that probably Ruby had a method for that.  I just needed to look up how to implement the least common multiple method in Google.

def candies_to_buy(kids)
  kid_arr = (1..kids).to_a
  kid_arr.reduce(1) {|acc, n| acc.lcm(n)}
end

p candies_to_buy(1) #  1)
p candies_to_buy(2) #  2)
p candies_to_buy(5) #  60)
p candies_to_buy(6) #  60)
p candies_to_buy(9) #  2520)
p candies_to_buy(10) #  2520)

