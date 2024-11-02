#This took a long time. The top CodeWars answer is below.

# def scramble(s1,s2)
#  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
#end


def scramble6(s1,s2)
  s1_hash = s1.chars.tally
  #p s1_hash
  s2.each_char do |char|
    #puts "The char is #{char} and the value count is #{s1_hash[char]}"
    if s1_hash[char] == nil || s1_hash[char] <= 0
      return false
    else
      s1_hash[char] -= 1
    end
  end
  true
end

p scramble6('rkqodlw', 'world')
p scramble6('cedewaraaossoqqyt', 'codewars')
p scramble6('katas','steak')
p scramble6("scriptingjava", "javascript")
p scramble6("scriptjavx", "javascript")

