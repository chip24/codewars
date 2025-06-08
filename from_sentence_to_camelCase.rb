# My code was ranked 5 out of 48. I just Google to remember the difference between #upcase (which capitalizes all letters) and #capitalize (which only capitalizes the first letter) and to find if there is a method that will just lowercase the first letter (there isn't).  I also Google to find the #chop method.

def to_camelcase(s,n)
  word_arr = s.split.map {|word| word.downcase}
  arr_size_minus_one = word_arr.size - 1

  if n == 1 
    word_arr.map.with_index do |word, idx|
     idx > 0 ? word.capitalize : word
   end.join
  elsif n == 2
    word_arr.map.with_index do |word, idx| 
      idx < arr_size_minus_one ? word[0..-2] + word[-1].upcase : word
    end.join
  elsif n == 3
    word_arr.map.with_index do |word, idx|
      if idx == 0
        word.chop + word[-1].upcase
      elsif idx == arr_size_minus_one
        word.capitalize
      else
        word[0].upcase + word[1..-1].chop + word[-1].upcase
      end
    end.join
 end
end

# on 6-1 figure out why "Each number plus one" isn't working for 2 and 3. Also, start to read Pro Git and/or a tutorial about Git rebase on YouTube.

p to_camelcase("hello world", 1)# "helloWorld")WORKS
#p to_camelcase("hello world", 2)# "hellOworld")
#p to_camelcase("hello world", 3)# "hellOWorld")
#p to_camelcase("Hello world", 1)# "helloWorld")
p to_camelcase("Each number plus one", 1)# "eachNumberPlusOne")
p to_camelcase("Each number plus one", 2)# "eacHnumbeRpluSone")
p to_camelcase("Each number plus one", 3)# "eacHNumbeRPluSOne")