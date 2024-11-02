def fibonacci(n)
  return n if n <= 1
  a, b = 0, 1
  (n - 1).times { a, b = b, a + b }
  b
end


p fibonacci(14)
p fibonacci(50)
p fibonacci(60)
p fibonacci(70)
