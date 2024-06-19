def count_duplicates(text)
  arr = text.downcase.chars
  #p arr
  dups = arr.select{|element| arr.count(element) > 1 }
  #p dups
  #p dups.uniq
  p dups.uniq.length
  dups.uniq.length
end
count_duplicates("")
count_duplicates("abcde")
count_duplicates("aabbcde")
count_duplicates("aabBcde")
count_duplicates("indivisibility")
count_duplicates("Indivisibilities")
count_duplicates("aA11")
count_duplicates("ABBA")