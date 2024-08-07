#my solution is very similar to the top solutions on Codewars although many of the top solutions used scan instead of gsub
#also, I needed to add the underscore after \W because _ is considered alphanumeric

def alphabetized(s)
  s.gsub(/[\W_]/,'').chars.sort_by(&:downcase).join
end

puts alphabetized("12,aBc-Def")
puts alphabetized("The Holy Bible")
p alphabetized("")
p alphabetized(" ")
p alphabetized(" a")
p alphabetized(" a ")
p alphabetized("A a B b")
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ")
p alphabetized("!@$%^&*()_+=-`,")
