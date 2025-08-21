# My code was ranked 10 out of 1186 after I upvoted it.  I didn't need to Google anything except for the syntax of #include?

def mine_location(field)
  one_arr = []
  field.each_with_index do |arr, idx|
    if arr.include?(1)
      one_arr << idx
      arr.each_with_index do |num, ind|
        if num == 1
          one_arr << ind
        end
      end
    end
  end
  one_arr
end

p mine_location([ [1, 0], [0, 0] ]) #.to eq([0, 0]);
p mine_location([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) #.to eq([0, 0]);
p mine_location([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) #.to eq([2, 2]);