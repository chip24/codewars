def max_profit(prices)
  prices.each_with_index do |price, index|
    if prices.index(prices.max) >= prices.index(prices.min)
      sum = prices.max - prices.min
      p "The greatest difference is #{sum}"
    else
      p "The min price index is higher"
      #p sorted_prices = prices.sort
      p prices.combination(2).min_by {|a,b| (a-b)}
      #.reduce
    end
  end
end

# on 7-21 keep trying to figure out how to handle cases where the largest value doesn't come after the smallest.  This code works, but it's too slow.

# on 7-23, start on page 108 in LERTBD

#p max_profit([3, 4])#.to eq(1)
#p max_profit([9, 9])#.to eq(0)
#p max_profit([3, 10, 8, 4])#.to eq(7)
#p max_profit([10, 7, 5, 8, 11, 9])#.to eq(6)
p max_profit([10, 7, 5, 4, 1])#.to eq(-1)