def generateHashtag(str)
  stripped_str = str.delete(' ')
  puts stripped_str
  if str.length == 0 || str.length > 140
    false
  else
  "#" + str.split.map(&:capitalize).join('')
  end
end

generateHashtag(" Hello there thanks for trying my Kata")
generateHashtag("    Hello     World   " )
generateHashtag("")
puts "code" + " " * 140 + "wars"
puts generateHashtag("code" + " " * 140 + "wars")