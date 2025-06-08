# My code was ranked 9 out of 743.  I didn't need any help.

def grabscrab(anagram, dictionary)
  words = []
  dictionary.each do |word|
    if word.chars.sort == anagram.chars.sort
      words << word
    end
  end
  words
end

p grabscrab("trisf", ["first"])# ["first"])
p grabscrab("oob", ["bob", "baobab"])# [])
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"])# ["mountains"])
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"])# ["pool", "loop"])
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"])# ["sport", "ports"])
p grabscrab("ourf", ["one","two","three"])# [])