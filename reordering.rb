#My code was ranked 11 out of 72.  

def re_ordering(text)
  word_arr = text.split(' ')
  word_arr.each do |word| 
    if word.match?(/\A[A-Z]/)
      word_arr.insert(0, word_arr.delete(word))
    end
  end.join(' ')
end


p re_ordering('ming Yao')

p re_ordering('Mano donowana')
p re_ordering('wario LoBan hello')
p re_ordering('bull color pig Patrick')
p re_ordering('jojo ddjajdiojdwo ana G nnibiial')
p re_ordering('is one of those rare names that s both exotic and simple Adira')
p re_ordering('is an older name than annabel Amabel and a lot more distinctive')
p re_ordering('JoJo')
p re_ordering('a b c d e f g h i j k l m n o p q r s t u v w x y Z')
p re_ordering('a b c d e f g h i j k l m N o p q r s t u v w x y z')

