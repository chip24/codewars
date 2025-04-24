# My code was ranked 14 out of 201.

def scrolling_text(text)
  rot_arr = []
  (0...text.length).each do |i|
    rot_arr << text.upcase.chars.rotate(i).join
  end
  rot_arr
end

p scrolling_text("codewars")