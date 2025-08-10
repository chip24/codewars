# My code was ranked 6 out of 149.  I only Googled to remember the syntax for #inject and how to turn letters into numbers based on their position in the alphabet.

def ride(group, comet)
  group_mod = group.chars.map {|ltr| ltr.downcase.ord - 96}.inject(:*) % 47
  comet_mod = comet.chars.map {|ltr| ltr.downcase.ord - 96}.inject(:*) % 47
  group_mod == comet_mod ? "GO" : "STAY"
end

p ride("COMETQ","HVNGAT")#{}"GO")
p ride("STARAB","USACO")#{}"STAY")
p ride("EARTH","LEFTB")#{}"GO")
p ride("PULSAR","VENUS")#{}"STAY")