def heap_permutation(arr, size)
  if size == 1
    puts arr.join
  end

  for i in 0...size
    heap_permutation(arr, size - 1)

    # if size is odd, swap 0th and size-1th 
    # else Swap ith and (size-1)th 
    if size.even?
      arr[i], arr[size - 1] = arr[size - 1], arr[i]
    else
      arr[0], arr[size - 1] = arr[size - 1], arr[0]
    end
  end
end

def middle_permutation(string)
  string_arr = string.chars
  middle_index = string_arr.length.odd? ? string_arr.length / 2 : (string_arr.length / 2) - 1

  permutations = []
  heap_permutation(string_arr, string_arr.length) do |perm|
    permutations << perm
    break if permutations.length == middle_index + 1
  end

  permutations.last
end

p middle_permutation("abcde")