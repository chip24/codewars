def generate_hashtag(str)
  hashtag =  "#" + str.split.map(&:capitalize).join('')
  # the hashtag will automatically include "#" so I set the length below to < 2
  if hashtag.length < 2 || hashtag.length > 140
    return false
  else
    hashtag
  end
end

generate_hashtag(" Hello there thanks for trying my Kata")
generate_hashtag("    Hello     World   " )
generate_hashtag("")
#puts "code" + " " * 140 + "wars"
generate_hashtag("code" + " " * 140 + "wars")