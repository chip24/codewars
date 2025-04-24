# My code was ranked 11 out of 196.  I only Google to find the best way to determine if all the strings in an array were the same.

def is_flush?(hand)
  suit_arr = []
  hand.each { |str| suit_arr << str[-1]}
  suit_arr.uniq.length == 1
end

p is_flush?(["AS", "3S", "9S", "KS", "4S"])
p is_flush?(["AD", "4S", "7H", "KC", "5S"])
p is_flush?(["AD", "4S", "10H", "KC", "5S"])
p is_flush?(["QD", "4D", "10D", "KD", "5D"])