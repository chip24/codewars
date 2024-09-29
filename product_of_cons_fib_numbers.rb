# I used pseudocdoe to write the code to find the Fibonnaci numbers.  Then I wrote the rest from what I knew and came up with the method at the bottom called prod_fib.  I asked Copilot to make it mor efficient, and it said I didn't need to store the values in the two arrays, so I took them out and submitted find_fib_product.  The top Codewars cod is below, but I'm not sure how it returns True or False.

# def productFib(prod)
#  a, b = [0, 1]
#  while prod > a * b
#    a, b = [b, a + b]
#  end
#  [a, b, prod == a * b]
#end

def find_fib_product(prod)
  a, b = 0, 1

  while true
    c = a + b
    prod_of_ab = a * b

    if prod_of_ab == prod
      return [a, b, true]
    elsif prod_of_ab > prod
      return [a, b, false]
    else
      a, b = b, c
    end
  end
end

p find_fib_product(40)
p find_fib_product(714)
p find_fib_product(800)

def product_fib(prod)
  fib_arr = [0,1]
  prod_arr = []
  a = 0
  b = 1
  while fib_arr.length <= prod
    c = a + b 
    fib_arr << c 
    prod_of_ab = a * b
    prod_arr << prod_of_ab
    if prod_of_ab == prod
      return [a, b, true]
    elsif prod_of_ab > prod 
      return [a, b, false]
    else
      a = b
      b = c
    end
  end
  #fib_arr
  #prod_arr
end

#p product_fib(40)
#p product_fib(714)
#p product_fib(800)