#My code was ranked 9 out of 129. I only used help for the regexes.

def validate(message)
  message_arr = message.split
  if message_arr[0] == "MDZHB" && message_arr[1]=~ /^\d{2}$/ && message_arr[2] =~ /^\d{3}$/ && message_arr[3] =~ /^[A-Z]+$/ && message_arr[4] =~ /^\d{2}$/ && message_arr[5] =~ /^\d{2}$/ && message_arr[6] =~ /^\d{2}$/ && message_arr[7]=~ /^\d{2}$/
    return true
  else
    false
  end
end

#p validate("Is this a right message?")
#p validate("MDZHB 85 596 KLASA 81 00 02 91")
#p validate("MDZHB 12 733 EDINENIE 67 79 66 32")
#p validate("MDZHV 60 130 VATRUKH 58 89 54 54")
#p validate("MDZHB 85 596 BRAMIRKA 81 00 02 91")
#p validate("MDZHB 12 733 INITIAL 67 79 66 32")
p validate("MDZHB 60 130 KROLI5T 58 89 54 54")
#p validate("MDZHB 85 596 KAMASIT 81 00 02 91")
#p validate("MDZHB 12 733 PREGRADA 67 79 66 32")
#p validate("MD2HB 60 1S0 AKKRETSIA 58 89 54 54")