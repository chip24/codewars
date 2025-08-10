def max_profit(prices)
  
  if prices.index(prices.max) >= prices.index(prices.min)
    sum = prices.max - prices.min
    #{}"The greatest difference is #{sum}"
  else
    p "The min price index is higher"
    
  end
end

# on 7-20 figure out how to handle cases where the largest value doesn't come after the smallest

# on 7-21, start on page 87 in LERTBD

#p max_profit([3, 4])#.to eq(1)
#p max_profit([9, 9])#.to eq(0)
#p max_profit([3, 10, 8, 4])#.to eq(7)
#p max_profit([10, 7, 5, 8, 11, 9])#.to eq(6)
#p max_profit([10, 7, 5, 4, 1])#.to eq(-1)
p max_profit([11, 7, 5, 8, 10, 9])#.to eq(5)