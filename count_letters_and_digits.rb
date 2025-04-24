# My code was ranked 11 out of 311.  I could have used the #count method and gotten a higher ranking.

def count_letters_and_digits(input)
  input.gsub(/[^a-zA-Z0-9]/, "").chars.length
end

p count_letters_and_digits("hel2!lo")
p count_letters_and_digits("wicked .. !")
p count_letters_and_digits("!?..A")
