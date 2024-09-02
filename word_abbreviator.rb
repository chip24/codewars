#the top answer on Codewars was very different from mine (abbreviate4), but the 2nd, 3rd, 4th, etc. were similar except that most used gsub instead of scan. Here's the top answer

#def self.abbreviate(string)
#    string.gsub /(\w)(\w+{2})(\w)/ do |word|
#      "#{$1}#{word.length - 2}#{$3}" 
#    end
#  end



def abbreviate(string)
  string.split(/[\s,-]/).map do |word|
    if word.length >= 4
      word[0] + (word.length-2).to_s + word[-1]
    else
      word
    #word[0] + word.length - 2 + word[-1]
  end
  end

end

#p abbreviate("banana")
#p abbreviate("double-barrel")
#p abbreviate("You, and I, should speak.")

def abbreviate2(string)
  new_arr = []
  string.scan(/[^-\s]+|[-\s]/).map do |word|
    if word.length > 3
      new_arr << word[0] + (word.length-2).to_s + word[-1]
     else
       new_arr << word
    #word[0] + word.length - 2 + word[-1]
  end
  end
  p new_arr.join
end
# on 9-2 figure out why the word length and if statement are not working 
#p abbreviate2("banana")
#p abbreviate2("double-barrel")
#p abbreviate2("You, and I, should speak.")

def abbreviate3(string)
  new_arr = []
  string.scan(/\w+|[^\w\s]|\s/).map do |word|
    if word.length > 3
      new_arr << word[0] + (word.length-2).to_s + word[-1]
     else
       new_arr << word
  end
  end
  p new_arr.join
end
# on 9-2 figure out why the word length and if statement are not working 
#p abbreviate3("banana")
#p abbreviate3("double-barrel")
#p abbreviate3("You, and I, should speak.")

def abbreviate4(string)
  string.scan(/\w+|[^\w\s]|\s/).map {|word| word.length > 3 ? word[0] + (word.length-2).to_s + word[-1] : word}.join
end
# on 9-2 figure out why the word length and if statement are not working 
p abbreviate4("banana")
p abbreviate4("double-barrel")
p abbreviate4("You, and I, should speak.")
