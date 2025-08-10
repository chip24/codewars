# My code was ranked 5 out of 63.  I needed to use Copilot to figure out that I should use #push instead of #insert to get the values to insert correctly into the array.  Other than that, I solved the problem on my own.

def bucketize(arr)
  bucket_arr = Array.new((arr.size + 1))
  tallied = arr.tally.sort_by {|k,v| k}

  tallied.each do |key, val|
    bucket_arr[val] ||= []
    bucket_arr[val].push(key)
  end
  bucket_arr
end

# Keep figuring out logic on 6-11.  It almosts works

#p bucketize([1,2,3,4,4,5,5,5]) # [nil, [1,2,3], [4], [5], nil, nil, nil, nil, nil]
#p bucketize([1, 1, 1])#[nil, nil, nil, [1]])
#p bucketize([7, 6, 6])#[nil, [7], [6], nil])
#p bucketize([5, 5, 5, 9])#[nil, [9], nil, [5], nil])
#p bucketize([8, 8, 4, 4])#[nil, nil, [4, 8], nil, nil])
#p bucketize([1, 7, 7, 7, 7, 10])#[nil, [1, 10], nil, nil, [7], nil, nil])
#p bucketize([20, 40, 60, 80, 100, 20])#[nil, [40, 60, 80, 100], [20], nil, nil, nil, nil])
#p bucketize([9, 9, 9, 9, 4, 34, 65, 17])#[nil, [4, 17, 34, 65], nil, nil, [9], nil, nil, nil, nil])
#p bucketize([12, 12, 12, 12, 12, 12, 19, 19])#[nil, nil, [19], nil, nil, nil, [12], nil, nil])
#p bucketize([1, 1, 1, 2, 3, 5, 5, 5, 5, 4])#[nil, [2, 3, 4], nil, [1], [5], nil, nil, nil, nil, nil, nil]) 
p bucketize([7, 6, 4, 3, 3, 3, 3, 3, 3, 2])#[nil, [2, 4, 6, 7], nil, nil, nil, nil, [3], nil, nil, nil, nil]) 