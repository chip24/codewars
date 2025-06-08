# My code was ranked 5 out of 141.  I needed to Google to remember how to split a string and how to add a key-value pair to a hash when iterating. The top two codes were one line each.  Here's #2 - s.split("0").map { |n| n.to_i.digits.sum }.max || 0

def largest_sum(s)
  sum_hash = {}
  s.split("0").each do |str| 
    sum_hash[str] = str.chars.map(&:to_i).sum
  end
  sum_hash.empty? ? 0 : sum_hash.values.max
end

p largest_sum("72102450111111090") #   11)
p largest_sum("123004560") #   15)
p largest_sum("0") #   0)