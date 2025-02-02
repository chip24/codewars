# My code was 25 out of 1,841.  I needed Copilot to help me with this.


def max_subarray_sum(arr)
  if arr.size == 0
    return 0
  end
  current_max = arr[0]
  global_max = arr[0]

  (1...arr.length).each do |i|
    global_max = [arr[i], global_max + arr[i]].max
    current_max = [current_max, global_max].max
  end

  if current_max == nil 
    return 0
  elsif current_max < 0
    return 0
  else
    return current_max
  end
end

# Example usage
arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_subarray_sum(arr) # Output: 6 (subarray [4, -1, 2, 1])



