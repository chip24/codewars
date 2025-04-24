# scramble2 was ranked 13th out of 182 in CodeWars.

def scramble(str, arr)
  new_arr =  []
  arr.each_with_index do |ele, idx|
    #p idx
    new_arr.insert(ele, str[idx])
  end

  new_arr.join

end

#p scramble('abcd', [0,3,1,2])
#p scramble('sc301s', [4,0,3,1,5,2])
#p scramble('bskl5', [2,1,4,3,0])

#on 3-29 figure out how to get rid of nils and wrong order

def scramble2(str,arr)
  
  str_arr = str.chars
  #new_arr = Array.new(str_arr.size)
  new_arr = []
  str_arr.each_with_index do |ele, idx|
    new_arr[arr[idx]] = ele
  end
  new_arr.join
end

#p scramble2('abcd', [0,3,1,2])
#p scramble2('sc301s', [4,0,3,1,5,2])
p scramble2('bskl5', [2,1,4,3,0])

