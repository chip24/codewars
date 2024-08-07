# the top answer in CodeWars
#def find_uniq(arr)
#arr.uniq.each { |x| return x if arr.count(x) == 1 }
#end

# I tested my answer compared to the top answer and mine ran slightly faster

def find_uniq(arr)
  sorted_arr = arr.sort
  sorted_arr[0] == sorted_arr[1] ? sorted_arr[-1] : sorted_arr[0]

end

#p find_uniq([ 1, 1, 1, 2, 1, 1 ])
#p find_uniq([ 0, 0, 0.55, 0, 0 ])

def uniq_find(arr)
  arr.sort[0] == arr.sort[1] ? arr.sort[-1] : arr.sort[0]
end

#p uniq_find([ 1, 1, 1, 2, 1, 1 ])
#p uniq_find([ 0, 0, 0.55, 0, 0 ])

def find_unique(arr)
arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

p find_unique([ 1, 1, 1, 2, 1, 1 ])
p find_unique([ 0, 0, 0.55, 0, 0 ])