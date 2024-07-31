

def sum_intervals(intervals)
  ranges = []
  intervals.each do |arr|
    ranges << Range::new(arr[0],arr[1])
  end

  p ranges

  # on 7-25 find out how to compare all elements of an array with all other elements of the same array

  puts ranges[0].overlap?(ranges[1])
  puts ranges[0].overlap?(ranges[2])

  ranges.each_cons(2) do |first, second|
    puts "first is #{first} and second is #{second}"
    if first.overlap?(second)
      first = 
    
  end



    
    



end

sum_intervals([
  [1, 4],
  [7, 10],
  [3, 5]
])