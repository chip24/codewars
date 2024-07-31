def find_short(s)
  lengths = []
  s.split.each {|word| lengths << word.length}
  lengths.sort[0]
end

find_short("The quick brown fox jumped over the lazy dog")