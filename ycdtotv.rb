#My code was ranked 8 out of 123.


def bucket_of(said)
  s = said.downcase
  if s.include?("water") || s.include?("wet") || s.include?("wash")
    if s.include?("i don't know") || s.include?("slime")
      "sludge"
    else
      "water"
    end
  elsif s.include?("i don't know") || s.include?("slime")
    "slime"
  else
    "air"   
  end
end

p bucket_of("What is that, WATER?!?")
p bucket_of("I don't know if I'm doing this right.")
p bucket_of("You won't get me!")

p bucket_of('water')
p bucket_of('slime')
p bucket_of("Will I get wet? I don't know.")
p bucket_of('This should be safe.')