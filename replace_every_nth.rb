# My code was ranked 6th out of 116.  I needed Copilot to help me since #sub! was counting the indexes wrong.

def replace_nth(text, n, old_value, new_value)
  return text if n <= 0
  char_count = 0
  text.chars.map do |char|
    if char == old_value
      char_count += 1
      char = new_value if char_count % n == 0    
    end
    char
  end.join
end

# On 5-8 figure out how to get the right character count when looping and substitute correctly.


p replace_nth("Vader said: No, I am your father!", 4, 'a', 'o') #"Vader soid: No, I am your fother!"
#p replace_nth("Vader said: No, I am your father!", 4, 'a', 'o') #"Vader said: No, I am your fother!")
#p replace_nth("Vader said: No, I am your father!", 6, 'a', 'o')#"Vader said: No, I am your father!")
#p replace_nth("Vader said: No, I am your father!", 0, 'a', 'o') #"Vader said: No, I am your father!")
#p replace_nth("Vader said: No, I am your father!", -2, 'a', 'o') # "Vader said: No, I am your father!")
#p replace_nth("Vader said: No, I am your father!", 1, 'i', 'y') #"Vader sayd: No, I am your father!")
#p replace_nth("Luke cries: Noooooooooooooooo!", 6, 'o', 'i') #"Luke cries: Noooooioooooioooo!")


