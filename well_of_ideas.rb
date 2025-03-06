def well(x)
  str_x = x.flatten.reject { |e| e =~ /\A\d+\z/ }
  p str_x
=begin
  flat_x = str_x.flatten.map {|item| item.downcase }
  good_count = flat_x.count("good")
  if good_count == 2
    "Publish!"
  elsif good_count > 2 
    "I smell a series!"
  else
    "Fail!"
  end
=end
end

p well([['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad']])
p well([['gOOd', 'bad', 'BAD', 'bad', 'bad'], ['bad', 'bAd', 'bad'], ['GOOD', 'bad', 'bad', 'bAd']])
p well([["bAd", "BAD", "RAD", "GOOD", "GOOD", "good", 6], [3, "good", "bad", "bAd", "bAd", "GOOD"], ["good", "cheat", "bad"]])

# on 2-16 find out how to remove all integers and 
