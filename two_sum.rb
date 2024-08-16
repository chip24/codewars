#one of the top Codewars answers. The beginning was the same as mine but the 2nd line was different
#def two_sum(numbers, target)
#  pair = numbers.combination(2).find{ |(a,b)| a+b == target }
#  [numbers.index(pair[0]), numbers.rindex(pair[1])]
#end



def two_sum(numbers, target)
  sum_arr = numbers.combination(2).detect {|a,b| a + b == target}    
  
  indices = []
  sum_arr.each do |ele|
    index = numbers.index(ele)
    indices << index
    numbers[index] = nil
  end
  indices
end
#on 8-14-24 find out how to return [0,1] not [0,0] for the third example
p two_sum([1,2,3], 4)
p two_sum([1234, 5678, 9012], 14690)
p two_sum([2, 2, 3], 4)