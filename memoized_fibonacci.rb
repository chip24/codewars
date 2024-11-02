def fibonacci(n, memo = {})
  return n if (0..1).include? n
  memo[n] ||= fibonacci(n - 1, memo) + fibonacci(n - 2,memo)
end

#p fibonacci(14)
#p fibonacci(50)
#p fibonacci(60)
#p fibonacci(70)


def fib_memo(n, memo)
  memo[n] ||= fib_memo(n-1, memo) + fib_memo(n-2, memo)
end

def fib(n)
  fib_memo(n, [0,1])
end

p fib(14)
p fib(50)
p fib(60)
p fib(70)


