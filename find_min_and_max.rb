#My code was ranked 40 out of 200, maybe because it sorted the array twice. I used no help.

def get_min_max(seq)
  [seq.sort[0],seq.sort[-1]]
end

#p get_min_max([8,4,5,2,8,5,7,2,0,6,2,1])

# I resubmitted the following code, and it was ranked 8th out of 200.  
def get_min_max_two(seq)
  sorted_seq = seq.sort
  [sorted_seq[0],sorted_seq[-1]]
end

p get_min_max_two([8,4,5,2,8,5,7,2,0,6,2,1])

