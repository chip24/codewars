# I submitted heggeleggleggo2, and it was ranked 7 out of 66.  I was going to use regex but decided against it.

def heggeleggleggo(word)
  p consonants = %w(b c d f g h j k l m n p q r s t v w x y)
  word.chars.map do |char| 
    if consonants.include?(char)
      char + "egg"
    else
      char
    end
  end.join
end

p heggeleggleggo("code here")

def heggeleggleggo2(word)
  p consonants = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z)
  word.chars.map do |char| 
    consonants.include?(char)? char + "egg" : char
  end.join
end

p heggeleggleggo2("FUN KATA")