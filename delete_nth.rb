def delete_nth(order, max_e)
  limited_hash = {}
  order.tally.each do |k,v|
    if v > max_e
      limited_hash[k] = max_e
    else
      limited_hash[k] = v
    end
  end
    limited_array = limited_hash.flat_map { |k,v| [k]*v }
end
# on 8-10 figure out how to keep the same order as the original order array
p delete_nth([20,37,20,21], 1)
p delete_nth([1,1,3,3,7,2,2,2,2], 3)
p delete_nth([12,39,19,39,39,19,12], 1)

def each_with_object_counter(arr)
  arr.each_with_object(Hash.new(0)) do |item, counter|
    counter[item] += 1
  end
end

p each_with_object_counter([12,39,19,39,39,19,12])