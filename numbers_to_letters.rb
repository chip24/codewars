# My code was ranked 12 out of 283.  I didn't need to Google anything.

def switcher(arr)
  value_arr = ('a'..'z').to_a.reverse + ['!','?',' ']
  arr.map { |char| value_arr[(char.to_i)-1] }.join 
end

p switcher(['24', '12', '23', '22', '4', '26', '9', '8'])