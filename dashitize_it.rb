#CodeWars had many different ways to solve this kata.  Mine was similar to some.  The top one was very short.

# def dashatize(num)
#  num ? num.to_s.scan(/[02468]+|[13579]/).join("-") : "nil"
#end

def dashitize(num)
  dash_string = num.to_s.chars.map {|char| char.to_i.odd? ? "-" + char + "-" : char }.join
  dash_string.gsub("--", "-").delete_suffix("-").delete_prefix("-")
end

#p dashitize(274)
#p dashitize(6815)
#p dashitize(974302)
p dashitize(5311)

def dashitize2(num)
  num.to_s.chars.map {|char| char.to_i.odd? ? "-" + char + "-" : char }.join.gsub("--","-").delete_suffix("-").delete_prefix("-")
end

p dashitize2(274)
p dashitize2(5311)
p dashitize2(86320)
p dashitize2(974302)
p dashitize2(0)
p dashitize2(-1)
p dashitize2(28369)