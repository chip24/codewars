# My answer was simmilar to the one from the other online tutorials and books that has Ceasar ciphers. The answer below was the top one on Codewars.

#def rot13(string)
#  string.tr("A-Za-z", "N-ZA-Mn-za-m")
#end

def rot13(message)
  message.tr("N-ZA-Mn-za-m", "A-Za-z")
end

p rot13("EBG13 rknzcyr.")



def rot_13(string)
  ascii_arr = string.chars.map {|char| char.ord}
  rot_arr = ascii_arr.map do |int|
    if int >= 65 && int <= 90
      (int - 65 + 13) % 26 + 65
    elsif int >= 97 && int <= 122
      (int - 97 + 13) % 26 + 97
    else
      int = int
    end
  end
rot_arr.map {|int| int.chr}.join
end


#p rot_13("test")
#p rot_13("There are 2 cats.")


# This one works only for strings with letters and no special characters.

def rot13_opt(string)
  string
    .chars
    .map {|char| char.ord}
    .map {|int| int >= 65 && int <= 90 ? (int- 65 + 13)% 26 + 65 : (int - 97 + 13) % 26 + 97}
    .map {|int| int.chr}
    .join
end

#p rot13_opt("test")
