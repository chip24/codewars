# This was the top answer in Codewars
# def tribonacci(s, n)
#for i in 3..n
#  s[i] = s[i-1] + s[i-2] + s[i-3]
#end
#return s.slice(0, n)
#end


def tribonacci(signature, n)
  case n
  when 0
    []
  when 1
    signature.first(1)
  when 2
    signature.first(2) 
  else
    length = signature.length
    until length == n
      signature << signature.last(3).sum
      #p signature
      length += 1
      #puts "The length is #{length}"
    end
    signature
  end
end

# on 8-3 find out why this is timing out on Codewars

p tribonacci([1,1,1],10)
p tribonacci([0,0,1],10)
p tribonacci([0.5,0.5,0.5],30)
p tribonacci([300,200,100],0)
p tribonacci([0,1,1],10)
p tribonacci([1,0,0],10)
p tribonacci([0,0,0],10)
p tribonacci([1,2,3],10)
p tribonacci([3,2,1],10)
p tribonacci([1,1,1],1)



