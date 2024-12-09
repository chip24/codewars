# My code works and I didn't use AI to solve it.  I was over working on this project, so I didn't bother shortening the code or removing the print statements.  The top answers on CodeWars were much shorter.  Here's one:
=begin
def is_interesting(n, awesome_phrases = [])
  return 2 if just_waow?(n, awesome_phrases)
  return 1 if [n+1,n+2].any? { |m| just_waow?(m, awesome_phrases) }
  0
end

def just_waow?(n, awesome_phrases)
  return false unless n > 99
  return true if n.digits.first(2).all?(&:zero?)
  return true if n.digits.uniq.size == 1
  return true if n.digits.each_cons(2).all? { |a,b| a == (b + 1) % 10 }
  return true if n.digits.each_cons(2).all? { |a,b| a == (b - 1) % 10 }
  return true if n.digits.zip(n.digits.reverse).all? { |a,b| a == b } # palindrom
  return true if awesome_phrases.include?(n)
  false
end
=end

def all_digits_same?(number)
  num_str = number.to_s
  first_digit = num_str[0]
  num_str.each_char {|digit| return false unless digit == first_digit}
  true
end

def sequential?(number)
  p digits = number.to_s.chars.map(&:to_i)
  (1..digits.size-1).all? {|i| digits[i] == digits[i-1]+ 1}
end

def decrementing?(number)
  p digits = number.to_s.chars.map(&:to_i)
  (1..digits.size-1).all? {|i| digits[i] == digits[i-1] - 1}
end

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def is_interesting(number, awesome_phrases)
  if number == 99 || number == 98
    puts "number is 98 or 99"
    return 1
  elsif number <= 97
    puts "THE NUMBER IS UNDER 97"
    return 0
  end
  if number.to_s[1..-1].to_i == 0 
    puts "ALL THE LAST DIGITS ARE ZEROES."
    return 2
  elsif (number + 1).to_s[1..-1].to_i == 0
    puts "ALL THE LAST DIGITS WILL BE ZERO IN 1 MILE"
    return 1 
  elsif (number + 2).to_s[1..-1].to_i == 0
    puts "ALL THE LAST DIGITS WILL BE ZERO IN 2 MILES"
    return 1

  end
  if all_digits_same?(number) == true
    puts "ALL THE DIGITS ARE THE SAME"
    return 2
  elsif all_digits_same?(number + 1) == true
    puts "ALL DIGITS WILL BE SAME IN 1 MILE"
    return 1
  elsif all_digits_same?(number + 2) == true
    puts "ALL DIGITS WILL BE SAME IN 2 MILES"
    return 1
  end
  if sequential?(number) == true
    puts "ALL DIGITS ARE SEQUENTIAL"
    return 2
  elsif sequential?(number + 1) == true
    puts "ALL DIGITS WILL BE SEQUENTIAL IN 1 MILE"
    return 1
  elsif sequential?(number + 2) == true
    puts "ALL DIGITS WILL BE SEQUENTIAL IN 2 MILES"
    return 1
  end
  if decrementing?(number) == true
    puts "ALLDIGITS ARE DECREMENTING"
    return 2
  elsif decrementing?(number + 1) == true
    puts "ALL DIGITS WILL BE DECREMENTING IN 1 MILE"
    return 1
  elsif decrementing?(number + 2) == true
    puts "ALL DIGITS WILL BE DECREMENTING IN 2 MILES"
    return 1
  end
  if palindrome?(number) == true
    puts "THE NUMBER IS A PALINDROME"
    return 2
  elsif palindrome?(number + 1) == true
    puts "THE NUMBER WILL BE A PALINDROME IN 1 MILE."
    return 1
  elsif palindrome?(number + 2) == true
    puts "THE NUMBER WILL BE A PALINDROME IN 2 MILES."
    return 1
  end
  if awesome_phrases.include?(number)
    puts "THE NUMBER IS IN THE AWESOME PHRASES"
    return 2
  elsif awesome_phrases.include?(number + 1)
    puts "THE NUMBER WILL BE IN AWESOME PHRASES IN 1 MILE"
    return 1
  elsif awesome_phrases.include?(number + 2)
    puts "THE NUMBER WILL BE IN AWESOME PHRASES IN 2 MILES"
    return 1
  end
  0
end

# on 11-11 add a condition to each part to include + 1 mile too.
=begin
p is_interesting(9000, [1337, 256])
p is_interesting(8998, [1337, 256])
p is_interesting(8997, [1337, 256])
p is_interesting(111, [1337, 256])
p is_interesting(109, [1337, 256])
p is_interesting(123456, [])
p is_interesting(123454, [])
p is_interesting(987654321, [])
p is_interesting(987652, [])
p is_interesting(1234321, [])
p is_interesting(456654, [])
p is_interesting(456652, [])
p is_interesting(256, [1337, 256])
p is_interesting(254, [1337, 256])

#p sequential?(123456)
#p sequential?(123454)

#p decrementing?(654321)
#p decrementing?(65431)

#p palindrome?(1234321)
#p palindrome?(12330)
p palindrome?(123)
=end

p is_interesting(67888, [1337, 256])