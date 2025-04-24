#My code was ranked 6 out of 105.  I needed no help except to confirm how to use the #times do loop.  I resubmitted my new code, and it became 6th place and the original became 7th place.

def geometric_sequence_elements(a, r, n)
  arr = [a]
  (n-1).times do 
    arr << a * r
    a = a * r 
  end
  arr.join(", ")
end

#p geometric_sequence_elements(2,3,5)
#p geometric_sequence_elements(2,2,10)
#p geometric_sequence_elements(1,-2,10)

def geometric_sequence_elements2(a, r, n)
  arr = []
  (n).times do 
    arr << a
    a = a * r 
  end
  arr.join(", ")
end

p geometric_sequence_elements2(2,3,5)
p geometric_sequence_elements2(2,2,10)
p geometric_sequence_elements2(1,-2,10)