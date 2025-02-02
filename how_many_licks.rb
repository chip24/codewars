#My code was ranked 5 out of 149 on CodeWars. I didn't use AI at all.

def total_licks(env)
  lick_adj = env.values.sum
  largest = env.max_by {|k,v| v}
  
  if env.empty?
    "It took 252 licks to get to the tootsie roll center of a tootsie pop."
  elsif largest[1].to_i <= 0 
    "It took #{252 + lick_adj} licks to get to the tootsie roll center of a tootsie pop."
  else
    "It took #{252 + lick_adj} licks to get to the tootsie roll center of a tootsie pop. The toughest challenge was #{largest[0]}."
  end
end

p total_licks({ "freezing temps"=>10, "clear skies"=>-2 })
p total_licks({ "happiness"=>-5, "clear skies"=>-2 })
p total_licks({})
p total_licks({"dragons"=>100, "evil wizards"=>110, "trolls"=>50})
p total_licks({"white magic"=>-250})