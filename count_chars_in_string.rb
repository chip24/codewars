def count_chars(s)
  s.chars.each_with_object(Hash.new(0)) do |item, hash|
    hash[item] += 1
  end
end

p count_chars("aba")
p count_chars("")

