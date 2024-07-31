# I feel like my code is better and clearer than the top answers on CodeWars, but below is one of the top answers
#def persistence(n)
#  return 0 if n < 10
#  1 + persistence(n.digits.reduce(&:*))
#end

def persistence(n)
  times_multiplied = 0
  until n.to_s.length == 1
   n = n.digits.inject(:*) 
   times_multiplied += 1
  end
  times_multiplied
end

puts persistence(39)
puts persistence(999)
puts persistence(4)