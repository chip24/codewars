def delete_nth(order, max_e)
  counts = Hash.new(0)
  order.each_with_object([]) do |item, result|
    if counts[item] < max_e
      result << item
      counts[item] += 1
    end
  end
end

p delete_nth([20,37,20,21], 1)
p delete_nth([1,1,3,3,7,2,2,2,2], 3)
p delete_nth([12,39,19,39,39,19,12], 1)