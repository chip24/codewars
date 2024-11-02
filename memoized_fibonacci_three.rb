# This code finally worked without timing out.  I found it on Stackoverflow and it uses a matrix approach, which works for large numbers.  Here's the top answer on CodeWars:

#@cache = [0,1]
#def fibonacci(n)
#  return @cache[n] if @cache[n]
#  @cache[n] = fibonacci(n-1) + fibonacci(n-2)
#end


def matrix_fib(n)
  if n == 1
    [0,1]
  else
    f = matrix_fib(n/2)
    c = f[0] * f[0] + f[1] * f[1]
    d = f[1] * (f[1] + 2 * f[0])
    n.even? ? [c,d] : [d,c+d]
  end
end

def fib(n)
  raise "fib not defined for negative numbers" if n < 0
  n.zero? ? n : matrix_fib(n)[1]
end

#p fib(14)
#p fib(50)
#p fib(60)
#p fib(70)

# Test to see how fast the top answer runs. (It runs at exactly the same speed as the matrix version above.)

@cache = [0,1]
def fibonacci(n)
  return @cache[n] if @cache[n]
  @cache[n] = fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(14)
p fibonacci(50)
p fibonacci(60)
p fibonacci(70)


