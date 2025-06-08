# My code was ranked 8 out of 146.  I just Googled to remember how to turn an integer or float to a string with 2 digits after the decimal.

def share_price(invested, changes)
  changes.each do |percent| 
    invested += invested * percent/100.00 
  end
  sprintf "%.2f", invested
end

p share_price(100, [])
p share_price(100, [-50, 50])
p share_price(100, [-50, 100])
p share_price(100, [-20, 30])
p share_price(1000, [0, 2, 3, 6])

# on 4-30 figure out how to return a string with 2 digits after the decimal