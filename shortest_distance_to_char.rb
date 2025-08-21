# My code was ranked 2 out of 45 after I upvoted it.  I needed to Google to figure out how to find the indices of each instance of a certain character in an array and to confirm that #min return the smallest value in an array.

def shortest_to_char(s, c)
  distances = []
  string_arr = s.chars

  return [] if c == ""
  return [] if s == ""
  return [] if !s.include?(c)

  c_indexes = string_arr.each_index.select { |i| string_arr[i] == c}

  string_arr.each_with_index do |char, idx|
    if char == c 
      distances << 0
    else
      diffs = []
      c_indexes.each do |i|
        diffs << (i - idx).abs 
      end
      distances << diffs.min
    end
  end
  distances
end

# on 8-16 start on page 319 on LERTBD

p shortest_to_char("lovecodewars", "e")#([3, 2, 1, 0, 1, 2, 1, 0, 1, 2, 3, 4])
p shortest_to_char("aaaaa", "a")#([0, 0, 0, 0, 0])
p shortest_to_char("aabbaabb", "a")#([0, 0, 1, 1, 0, 0, 1, 2])
p shortest_to_char("aaaabbbb", "b")#([4, 3, 2, 1, 0, 0, 0, 0])
p shortest_to_char("aaaaa", "b")#([])
p shortest_to_char("lovecoding", "")#([])
p shortest_to_char("", "")#([])