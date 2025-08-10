# My code was ranked 6 out of 84.  I needed to Google to get the chunk_while method.  By ranking my code as "Best Practices", I was able to improve the rank to 4 out of 84.

def fire_and_fury(tweet)
  words = [/FIRE/,/FURY/]
  re = Regexp.union(words)
  word_arr = tweet.scan(re)
  result = []
  p allowed_letters = /[^FIREUY]/
  
  return "Fake tweet." if tweet.match?(allowed_letters)
  return "Fake tweet." if word_arr.empty?

  word_arr.chunk_while { |a, b| a == b }.each do |group|
    phrase = group.first
    count = group.size
    if phrase == "FIRE" && count == 1
      result << "You are fired!"
    elsif phrase == "FIRE" && count > 1
      result << "You " + "and you " * (count - 1) + "are fired!"
    elsif phrase == "FURY" && count == 1
      result << "I am furious."
    elsif phrase == "FURY" && count > 1
      result << "I am " + "really " * (count - 1) + "furious."
    end
  end
  result.join(" ")
end

# on 7-29 figure out why 9 tests are failing

# on 7-29 start on page 174 of LERTBD

#p fire_and_fury("FURYYYFIREYYFIRE")# "I am furious. You and you are fired!")
#p fire_and_fury("FIREYYFURYYFURYYFURRYFIRE")# "You are fired! I am really furious. You are fired!")
#p fire_and_fury("FYRYFIRUFIRUFURE")# "Fake tweet.")
p fire_and_fury("AAFIREBBFURYCC") # "Fake tweet."