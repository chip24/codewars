# one of top CodeWars solutions
#def wave(str)
#  wave = []
#  for i in 0...str.length
#    word = str.downcase
#    word[i] = word[i].upcase
#    wave << word if word[i].match(/[A-Za-z]/)
# end
#  wave
#end

def wave(str)
  wave_arr = []
  count = 0
  str.delete(" ").length.times do
    wave_arr << str.delete(" ").chars.map.with_index {|c, i| i == count ? c.capitalize : c }.join
    count += 1
  end
  space_positions = []
  str.chars.each_with_index do |char, index|
    space_positions << index if char == ' '
  end
  
  wave_arr_with_spaces = []

  wave_arr.map do |str|
    space_positions.each do |pos|
      str.insert(pos, ' ')
    end
    wave_arr_with_spaces << str
  end

  wave_arr_with_spaces
end
# on 8-11 figure out how to ignore spaces
p wave("hello")
p wave(" gap ")
p wave("a      b     ")

