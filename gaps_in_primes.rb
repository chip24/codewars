#The top CodeWars answer was very similar to mine. The second from top answer is pasted below. I submitted gap2 after I reformatted gap to make it shorter.

# def gap(g,m,n)
#  Prime.take_while { |i| i<=n }.reject { |i| i<m }.each_cons(2).find { |a,b| b-a == g }
#end


require 'prime'

def gap(g, m, n)
  prime_arr = Prime.each(n).select {|prime| prime >= m }
  prime_arr.each_cons(2) do |pair|
    #p pair
    if pair[1] - pair[0] == g
      return pair
    end
  end
end

# on 9-18 find out wy the prime_arr is not including any digits for 100 and 110

p gap(2,2,110)
p gap(2,100,110)
p gap(4,100,110)
p gap(6,100,110)
p gap(4,130,200)

def gap2(g, m, n)
  prime_arr = Prime.each(n).select {|prime| prime >= m }
  prime_arr.each_cons(2) {|pair| return pair if pair[1] - pair[0] == g }

end

# on 9-18 find out wy the prime_arr is not including any digits for 100 and 110

p gap2(2,2,110)
p gap2(2,100,110)
p gap2(4,100,110)
p gap2(6,100,110)
p gap2(4,130,200)

