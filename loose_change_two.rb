# My code was ranked 5 out of 130 until I upvoted it as best practices and it moved to 3rd place.  I only needed to Google to remember the name of the #floor method.

def loose_change(cents)
  coin_hash = {'Nickels' => 0, 'Pennies' => 0, 'Dimes' => 0, 'Quarters' => 0}
  p rounded_cents = cents.floor

  return coin_hash if cents <= 0
  
  until rounded_cents <= 0 
    if rounded_cents - 25 >= 0
      coin_hash['Quarters'] += 1
      rounded_cents -= 25 
    elsif rounded_cents - 10 >= 0
      coin_hash['Dimes'] += 1
      rounded_cents -= 10
    elsif rounded_cents - 5 >= 0
      coin_hash['Nickels'] += 1
      rounded_cents -= 5
    elsif rounded_cents - 1 >= 0
      coin_hash["Pennies"] += 1
      rounded_cents -= 1
    end
  end

  coin_hash
end

# on 7-30. figure out how to deal with float cents 

# on 7-30 start on page 186 in LERTBD 

#p loose_change(56)#.to eq({'Nickels' => 1, 'Pennies' => 1, 'Dimes' => 0, 'Quarters' => 2})
#p loose_change(0)#.to eq({'Nickels' => 0, 'Pennies' => 0, 'Dimes' => 0, 'Quarters' => 0})
#p loose_change(100)#.to eq({'Nickels' => 0, 'Pennies' => 0, 'Dimes' => 0, 'Quarters' => 4})
#p loose_change(-3)#.to eq({'Nickels' => 0, 'Pennies' => 0, 'Dimes' => 0, 'Quarters' => 0})
p loose_change(7.9)#.to eq({'Nickels' => 1, 'Pennies' => 2, 'Dimes' => 0, 'Quarters' => 0})

