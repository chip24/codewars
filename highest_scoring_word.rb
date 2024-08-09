#many of the CodeWars solution subtracted 96 from the sum like this:
#def high x
#x.split.max_by{|word| word.chars.sum{|c| c.ord-96}}
#end

def high(x)
  letters = [*'a'..'z']
  value_hash = {}
  x.split.map do |word|
    total = 0
    word.chars.each do |letter|
      total += (letters.index(letter) + 1)
      value_hash[word] = total
    end
  end
  value_hash.max_by{|k,v| v}[0]
end

p high("man i need a taxi up to ubud")
p high('what time are we climbing up the volcano')
p high('take me to semynak')
p high('aa b')
p high('b aa')
p high('d bb')
p high('aaa b')

