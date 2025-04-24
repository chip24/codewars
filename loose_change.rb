# My code was ranked 6 out of 99.  I just Google to find out how to make my output has two decimal places.

def change_count(change)
  
  coin_hash = {"penny" => 0.01, "nickel" => 0.05, "dime" => 0.10, "quarter" => 0.25, "dollar" => 1.00}
  total = 0.00

  change.split(" ").each do |coin| 
    total += coin_hash[coin]
  end
  format('$%.2f', total)

end

p change_count('dime penny dollar')
p change_count('dime penny nickel')
p change_count('dollar quarter dime dime nickel quarter quarter')
p change_count('quarter quarter')
p change_count('dollar penny dollar')
p change_count('dollar dollar dollar dollar dollar dollar dollar dollar dollar dollar penny')