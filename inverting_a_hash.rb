#My code was ranked fairly low even though several of the higher ranked codes were very similar. 

def invert_hash(hash)
  new_hash = {}
  hash.each do |k, v| 
    new_hash[v] = k
  end
  new_hash
end

p invert_hash({ 'hello' => 'world' })
p invert_hash({ 'a' =>  1, 'b' => 2, 'c' => 3  })

