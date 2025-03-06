#My code was ranked 4 out of 79 on Codewars.

def hex_word_sum(s)
  hex_s = s.gsub("O","0").gsub("S","5")
  hex_arr = []
  split_hex = hex_s.split
  split_hex.each do |word| 
    if !word[/\H/] == true
      hex_arr << word.hex
    end  
  end
  hex_arr.sum
end

p hex_word_sum('DEFACE')
p hex_word_sum('SAFE')
p hex_word_sum('CODE')
p hex_word_sum('BUGS')
p hex_word_sum('')
p hex_word_sum('DO YOU SEE THAT BEE DRINKING DECAF COFFEE')
p hex_word_sum('ASSESS ANY BAD CODE AND TRY AGAIN')