def hex_word_sum(s)
  hex_s = s.gsub("O","0").gsub("S","5")
  #p hex_s
  hex_length = hex_s.split.length
  if hex_length == 1 && !hex_s[/\H/] == false 
    0
  elsif hex_length == 0
    0
  else
    hex_arr = []
    split_hex = hex_s.split
    split_hex.each do |word| 
      if !word[/\H/] == true
        hex_arr << word.hex
      end
      
    end
    #.map {|word| word.hex}.sum
    p "The hex_arr is #{hex_arr}"
    hex_arr.sum
  end

end

p hex_word_sum('DEFACE')
p hex_word_sum('SAFE')
p hex_word_sum('CODE')
p hex_word_sum('BUGS')
p hex_word_sum('')
p hex_word_sum('DO YOU SEE THAT BEE DRINKING DECAF COFFEE')
p hex_word_sum('ASSESS ANY BAD CODE AND TRY AGAIN')