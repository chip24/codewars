# the top answer on Codewars
# def encrypt_this(text)
#  text.split.map { |word|
#    word[1], word[-1] = word[-1], word[1] if word.size > 2
#    word[0] = word[0].ord.to_s
#    word
#  } .join(' ')
#end

def encrypt_this(text)
  string_array = text.split.map {|word| word.chars}
  swapped_string_array = string_array.each do |arr|
    if arr.size > 1
      arr[1],arr[-1] = arr[-1],arr[1]
    end
  end
  ascii_arr = swapped_string_array.each do |arr|
    arr[0] = arr[0].ord 
  end 
  ascii_arr.map {|sub_arr| sub_arr.join}.join(" ")

end

p encrypt_this("A wise old owl lived in an oak")
p encrypt_this("Hello")
p encrypt_this("good")
p encrypt_this("hello world")

