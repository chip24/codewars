#The top answer in Codewars and most of the following answers combined everything into one step and used #find instead of #each

# def step(g, m, n)
#  require 'prime'
#  r = (m..n).find { |i| i.prime? && (i+g).prime? }
#  return nil if m+g > n || r.nil?
#  [r, r+g]
#end



require 'prime'

def step(g, m, n)
  p [g,m,n]
  prime_arr = Prime.each(n).select {|prime| prime >= m }
  prime_arr.each_with_index do |num, index|
    prime_arr[(index + 1)..-1].each do |next_num|
      return [num, next_num] if (next_num - num) == g
      

    end
  end
  nil
end

# on 9-19 find out why some are not working

p step(2,2,110)
p step(2,100,110)
p step(4,100,110)
p step(6,100,110)
p step(11,30000,100000)

