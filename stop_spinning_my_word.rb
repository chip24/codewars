#below is one of the top solutions on CodeWars
#def spinWords(string)
#  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
#end

def spin_words(string)
  word_array = []
  string.split(" ").each do |word|
    if word.length >= 5
      word_array << word.reverse
    else
      word_array << word
    end
  end

  word_array.join(" ")
end

spin_words("Hey fellow warriors")
spin_words("This is a test")
spin_words("This is another test")
