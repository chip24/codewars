#My solution was similar to most on Codewars. I found the "+ ltr" part on ruby-forum.com. The poster doesn't explain why it works to keep the capitals first and doesn't really seem to know why either. Most of the other solutions used ", ltr" instead of "+ ltr"

#def find_children(dancing_brigade)
#  dancing_brigade.chars.sort_by{|c| [c.downcase,c]}.join
#end

def find_children(dancing_brigade)
  dancing_brigade.chars.sort_by {|ltr| ltr.downcase + ltr}.join
end

p find_children("AaaaaZazzz")
p find_children("CbcBcbaA")