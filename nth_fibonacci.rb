# My code was ranked 17 out of 792.  I didn't need any help.

def nth_fibonacci(n)
  fib = [0,1]
  (1..n).each do |num| 
    fib << fib[-1] + fib[-2]
  end
  fib[n-1]
end

# Watch the rest of Corey Shafer's Git tutorial and figure out the logic of this code on 6-4.

p nth_fibonacci(1)# 0)
p nth_fibonacci(2)# 1)
p nth_fibonacci(3)# 1)
p nth_fibonacci(4)# 2)
p nth_fibonacci(5)# 3)
p nth_fibonacci(6)# 5)
p nth_fibonacci(7)# 8)
p nth_fibonacci(8)# 13)
p nth_fibonacci(9)# 21)
p nth_fibonacci(10)# 34)