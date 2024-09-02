#My code is shorter than the rest of the codes in Codewars, but #tally doesn't work in Codewars for some reason

def highest_rank(arr) 
  
  arr.tally.sort_by {|k,v| [v,k]}.flatten[-2]

end
# on 8-28 find out why Codewars can't use tally

p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) 
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])
p highest_rank([1, 2, 3])
p highest_rank([1, 1, 2, 2, 3])

# This code replaces tally with #each_with_object and a block

def highest_rank2(arr)
  tally_hash = arr.each_with_object(Hash.new(0)) {|element,counts| counts[element] += 1 }
  #p tally_hash
  tally_hash.sort_by {|k,v| [v,k]}.flatten[-2]
 
end

p highest_rank2([12, 10, 8, 12, 7, 6, 4, 10, 12]) 
p highest_rank2([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])
p highest_rank2([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])
p highest_rank2([1, 2, 3])
p highest_rank2([1, 1, 2, 2, 3])