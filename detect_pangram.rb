# a simpler CodeWars answer is below
# def panagram?(s)
#("A".."Z").to_a - s.upcase.chars == []
#end
# I originally submitted the followinng, but realized I didn't need the true and false parts
=begin
def pangram?(string)
  if [*('a'..'z')] - string.delete(" ").downcase.chars.uniq == []
    true
  else
    false
  end
end
=end

def pangram?(string)
  if [*('a'..'z')] - string.delete(" ").downcase.chars.uniq == []
end

puts pangram?("The Quick brown fox jumped over the lazy dogs 345.")
puts pangram?("no way")