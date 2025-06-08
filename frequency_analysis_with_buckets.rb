def bucketize(arr)
  arr
end

p bucketize([1, 1, 1])#[nil, nil, nil, [1]])
p bucketize([7, 6, 6])#[nil, [7], [6], nil])
p bucketize([5, 5, 5, 9])#[nil, [9], nil, [5], nil])
p bucketize([8, 8, 4, 4])#[nil, nil, [4, 8], nil, nil])
p bucketize([1, 7, 7, 7, 7, 10])#[nil, [1, 10], nil, nil, [7], nil, nil])
p bucketize([20, 40, 60, 80, 100, 20])#[nil, [40, 60, 80, 100], [20], nil, nil, nil, nil])
p bucketize([9, 9, 9, 9, 4, 34, 65, 17])#[nil, [4, 17, 34, 65], nil, nil, [9], nil, nil, nil, nil])
p bucketize([12, 12, 12, 12, 12, 12, 19, 19])#[nil, nil, [19], nil, nil, nil, [12], nil, nil])
p bucketize([1, 1, 1, 2, 3, 5, 5, 5, 5, 4])#[nil, [2, 3, 4], nil, [1], [5], nil, nil, nil, nil, nil, nil]) 
p bucketize([7, 6, 4, 3, 3, 3, 3, 3, 3, 2])#[nil, [2, 4, 6, 7], nil, nil, nil, nil, [3], nil, nil, nil, nil]) 