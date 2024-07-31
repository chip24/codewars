# Below is the best solution from CodeWars #find returns the first element in an array that matches the condition 

def first_non_repeating_letter(s)
  if s.empty?
    return ""
  elsif s.length == 1
    return s
  else
  char_hash = s.downcase.chars.each_with_object(Hash.new(0)) do |chr, hash|
    hash[chr] += 1
  end
end
  p char_hash

  if char_hash.has_value?(1) == false
    return ""
  else 
    char_hash.each do |key, value|
      puts "the key is #{key} and the value is #{value}"
      if value != 1
      next

      elsif value == 1 && s.include?(key)
      #if s.include?(key)
        puts "the answer is #{key}"
        return key
      elsif value == 1 && s.include?(key) == false
        puts "the answer is #{key.upcase}"
        return key.upcase
      end
 
      end
  end
end

#7-13 figure out how to deal with empty string

puts first_non_repeating_letter("Stress")
puts first_non_repeating_letter("amphibian")
puts first_non_repeating_letter("fox")
puts first_non_repeating_letter("a")
puts first_non_repeating_letter("")
puts first_non_repeating_letter("abba")
puts first_non_repeating_letter("cc")
