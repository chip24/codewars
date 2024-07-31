# below is the top rated solution on CodeWars
# def alphabet_position(text)
#text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
#end


def alphabet_position(text)
  alphabet = [*'a'..'z']
  #p alphabet
  pos_arr = []
  text.downcase.chars.map do |char|
    if alphabet.include?(char)
     pos_arr << alphabet.find_index(char) + 1
    else
      next  
    end
  end
  p pos_arr.join(" ").to_s
end

alphabet_position("Chip2")
