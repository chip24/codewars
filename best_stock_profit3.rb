# My code was ranked 1 out of 48.  I needed ChatGPT to help me with the algorithm for the else section.  I think my original code in best_stock_profit.rb would have worked, but it timed out.

def max_profit(prices)
  if prices.length > 2 && prices == prices.sort.reverse
    lowest = prices.combination(2).min_by { |a,b| (a-b).abs }
    lowest[1] - lowest[0]
  else
    min_so_far = prices[0]
    max_diff = 0
    best_pair = nil

    prices.each_with_index do |num, i|
      diff = num - min_so_far
      if diff > max_diff
        best_pair = [min_so_far, num]
        max_diff = (best_pair[0] - best_pair[1]).abs
      end
      min_so_far = [min_so_far, num].min 
    end
    max_diff
  end  
end

# on 7-21 figure out how to handle cases where the largest value doesn't come after the smallest. I'm pretty sure this array will be sorted from largest to smallest. I could use ChatGPT's suggestion, but I feel like it'll time out. Also, figure out why the last example below isn't working

# on 7-23, start on page 108 in LERTBD

p max_profit([3, 4])#.to eq(1)
p max_profit([9, 9])#.to eq(0)
p max_profit([3, 10, 8, 4])#.to eq(7)
p max_profit([10, 7, 5, 8, 11, 9])#.to eq(6)
p max_profit([10, 7, 5, 4, 1])#.to eq(-1)
p max_profit([11, 7, 5, 8, 10, 9])#.to eq(5)
p max_profit([52, 46, 39, 53, 86, 17]) # 47