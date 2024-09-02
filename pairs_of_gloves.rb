# The top answer in CodeWars used #tally although an earlier kata would not allow me to use the #tally method

# def number_of_pairs(gloves)
#  gloves.tally.sum {|_, t| t/2 }
#end



def number_of_pairs(gloves)
  tally_hash = gloves.each_with_object(Hash.new(0)) {|element,counts| counts[element] += 1 }
  p tally_hash
  count = 0
  tally_hash.each do |k,v|
    pair = v/2
    count += pair
  end
  count
end

p number_of_pairs(["red", "green", "red", "blue", "blue"])
p number_of_pairs(["red","green","blue","blue","red","green","red","red","red"])