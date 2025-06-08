# My code was ranked 18 out of 1735. I only Googled to remember the #downcase method.

def change(s)
  arr = []
  down_s = s.downcase
  ("a".."z").to_a.each do |letter|
    if down_s.include?(letter)
      arr << 1
    else
      arr << 0
    end
  end
  arr.join
end

p change("a **&  bZ")# "11000000000000000000000001")
p change('Abc e  $$  z')# "11101000000000000000000001")
p change("!!a$%&RgTT")# "10000010000000000101000000")
p change("")# "00000000000000000000000000")
p change("abcdefghijklmnopqrstuvwxyz")# "11111111111111111111111111")
p change("aaaaaaaaaaa")# "10000000000000000000000000")
p change("&%&%/$%$%$%GYtf67fg34678hgfdyd")# "00010111000000000001000010")

