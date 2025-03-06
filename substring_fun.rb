#My code was ranked 11th out of 450 and I used no help.

def nth_char(words)
  word_arr = []
  words.each_with_index do |w, i|
    word_arr << w[i]
  end
  word_arr.join
end

nth_char(['yoda', 'best', 'has'])
nth_char([])
nth_char(['X-ray'])
nth_char(['No','No'])
nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia'])