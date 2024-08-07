def tribonacci(signature, n)
  if n > 0
    length = signature.length
    
    until length == n
      signature << signature.last(3).sum
      p signature
      length += 1
      puts "The length is #{length}"
    end
    signature
  else
    return []
  end
end

# on 8-3 find out why this is timing out on Codewars
=begin
p tribonacci([1,1,1],10)
p tribonacci([0,0,1],10)
p tribonacci([0.5,0.5,0.5],30)
p tribonacci([300,200,100],0)
p tribonacci([0,1,1],10)
p tribonacci([1,0,0],10)
p tribonacci([0,0,0],10)
p tribonacci([1,2,3],10)
p tribonacci([3,2,1],10)
=end
p tribonacci([1,1,1],1)



