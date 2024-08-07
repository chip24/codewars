

#p decodeMorse(".... . -.--   .--- ..- -.. .")
#p decodeMorse("...---...")
#p decodeMorse("       ...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-")
# on 8-6 find out what MORSE_CODE is on Codewars Forum

def text_to_morse(text)
  morse_code = text.upcase.chars.map { |char| MORSE_CODE[char] }.join(' ')
  morse_code.gsub!(/\s+/, ' ') # Remove extra spaces
  morse_code
end

puts text_to_morse("       ...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-")