def encode(s)
  #s
end

def decode(s)
  puts encode("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
  puts encode("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
  puts encode("!@#$%^&*()_+-")
  a,b,c = ["", "", ""]

  ('a'..'z').each do |l|
    a += encode(  "" + l)[0]
    b += encode( "_" + l)[1]
    c += encode("__" + l)[2]
    
  end

  puts a
  puts b
  puts c

  s
end

#p decode("Hello World!")
p decode("atC5kcOuKAr!")