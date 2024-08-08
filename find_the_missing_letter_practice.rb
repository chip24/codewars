#top Codewars solution
#def find_missing_letter(arr)
#  ((arr.first..arr.last).to_a - arr).first
#end



def find_missing_letter(arr)
  letters = [*'a'..'z', *'A'..'Z']
  (letters[letters.index(arr[0])..letters.index(arr[-1])] - arr).join
end

p find_missing_letter(['a','b','c','d','f'])
p find_missing_letter(['O','Q','R','S'])