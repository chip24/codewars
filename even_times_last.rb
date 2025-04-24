# My code was ranked 10 out of 227. I didn't need any help at all.

def even_last(numbers)
  arr = []
  if numbers.length == 0
    return 0
  else  
    numbers.each_with_index {|num, idx|  arr << num if idx.even?}
    arr.sum * numbers[-1]
  end
end

p even_last([2, 3, 4, 5])
p even_last([])

