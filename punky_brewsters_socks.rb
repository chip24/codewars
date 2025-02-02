#Mycode was ranked 5th out of 140.  I only needed helped for the keys[0,1] part.  I didn't realize/remember that[0,1] means take a slice of one element starting at index 0.

def get_socks(name,socks)
  if name == "Henry"
    sock_arr = socks.group_by {|color| color}.select {|k,v| v.size > 1}.keys[0,1] * 2
  else
    sock_arr = socks.uniq
  end

  sock_arr.size == 1 ? sock_arr = [] : sock_arr[0..1]


end

#p get_socks('Henry',['red','blue','blue','green'])
#p get_socks('Punky',['pink','argyle','argyle'])
p get_socks('Henry', ["golden", "red", "pink", "red", "dirty sock", "pink", "red", "golden", "green", "pink", "yellow", "yellow", "pink", "yellow", "blue", "argyle", "torn sock", "argyle", "red", "green", "green", "argyle", "yellow", "argyle", "blue"])

