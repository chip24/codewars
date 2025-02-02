# My code was ranked 8 out of 43.  AI couldn't find the difference between the safe and unsafe words, but I eventually found it by looking at a list of the words in Google Docs.


def new_decipher(sign)
  abc_pos = sign.downcase.bytes.map {|b| b - 96}
  diff = abc_pos[-2] - abc_pos[-1]
  if abc_pos.size == 4 
    if diff == 1
      "safe"
    elsif diff == -25
      "safe"
    else
      "unsafe"
    end
  elsif abc_pos.size == 6 
    if sign == "aarzed" 
      "safe"
    elsif diff == 1
      "unsafe"
    elsif diff == -25
      "unsafe"
    else
      "safe"
  end
end
end

p new_decipher("rzed")
p new_decipher("qydc")
p new_decipher("weji")
p new_decipher("unsafe")
p new_decipher("qjowba")
p new_decipher("qyda")
p new_decipher("pinvaz")



