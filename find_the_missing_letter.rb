def find_missing_letter(arr)
  letters = [*'a'..'z', *'A'..'Z']
  first_index = letters.index(arr[0])
  last_index = letters.index(arr[-1])
  p subarray = letters[first_index..last_index]
  
end

find_missing_letter(['a','b','c','d','f'])
find_missing_letter(['O','Q','R','S'])