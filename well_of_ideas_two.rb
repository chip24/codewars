#My solution was ranked 9 out of 159.  I only Google to find out how to reject the integers from the original array. 

def well(x)
  str_x = x.flatten.reject {|item| item.is_a?(Integer)}
  lower_x = str_x.map {|item| item.downcase }
  good_count = lower_x.count("good")
  if good_count == 1 || good_count == 2
    "Publish!"
  elsif good_count > 2 
    "I smell a series!"
  else
    "Fail!"
  end
end

p well([['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad']])
p well([['gOOd', 'bad', 'BAD', 'bad', 'bad'], ['bad', 'bAd', 'bad'], ['GOOD', 'bad', 'bad', 'bAd']])
p well([["bAd", "BAD", "RAD", "GOOD", "GOOD", "good", 6], [3, "good", "bad", "bAd", "bAd", "GOOD"], ["good", "cheat", "bad"]])
p well([[6, "DAB", 3, "cheat"], ["bAd", "BAD", "bad", "TEST", "BAD", "bAd", "bAd", "RAD"], ["bad", "BAD", "GOOD", "six"]])

