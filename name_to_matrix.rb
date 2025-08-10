# Mt code was ranked 8 out of 107.  I only needed to Google to remember the syntax for square roots and #each_slice.

def matrix(name)
  squares = [1,4,9,16,25,36,49,64,81,100,121,144]
  name_arr = []
  return "name must be at least one letter" if name.empty?
  
  if squares.include?(name.length)
    name_arr << name.chars
  else
    periods = (Math.sqrt(name.length).to_i+1)**2 - name.length
    name << "." * periods
    name_arr << name.chars
  end
  
  divide_by = Math.sqrt(name_arr.flatten.length).to_i
  name_arr.flatten.each_slice(divide_by).to_a
end

# on June 21st, figure out how to divide the arrays into equally lengthed subarrays

#p matrix("")# "name must be at least one letter")
p matrix("G")# [["G"]])
p matrix("Bill")
p matrix("Beyonce")# [["B", "e", "y"], ["o", "n", "c"], ["e", ".", "."]])
