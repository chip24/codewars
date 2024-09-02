#my solution was the exact same as the top solution on CodeWars!!!


def data_reverse(data)
  data.each_slice(8).to_a.reverse.flatten
end

p data_reverse([1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0])