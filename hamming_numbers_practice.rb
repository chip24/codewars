#I found Python code from blog.wohin.me and had Copilot translate it into Ruby. This was very hard.  The top code is below.
=begin
def hamming(n)
  result = [1]
  i = j = k = 0
  while result.size < n
    result << [result[i]*2,result[j]*3,result[k]*5].min
    i += 1 if result.last == result[i] * 2
    j += 1 if result.last == result[j] * 3
    k += 1 if result.last == result[k] * 5
  end
  result.last
end
=end

def hamming(n)
  bases = [2, 3, 5]
  expos = [0, 0, 0]
  hamms = [1]
  
  (1...n).each do
    next_hamms = bases.map.with_index { |base, i| base * hamms[expos[i]] }
    next_hamm = next_hamms.min
    hamms << next_hamm
    
    bases.each_index do |i|
      expos[i] += 1 if next_hamms[i] == next_hamm
    end
  end
  
  hamms.last
end

# Example usage
puts hamming(1)  # Outputs: 12
puts hamming(2) 
puts hamming(3) 
puts hamming(4) 
puts hamming(5) 
puts hamming(6) 
puts hamming(7) 
puts hamming(8) 
puts hamming(9) 
puts hamming(10) 
puts hamming(11) 
puts hamming(12) 
puts hamming(13) 
puts hamming(14) 
puts hamming(15) 
puts hamming(16) 
puts hamming(17) 
puts hamming(18) 
puts hamming(19) 




