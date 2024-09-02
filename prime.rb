def isPrime(num)
  divisor = 2
  prime = true
  
  if num < 0
    prime = false
    return prime
  end

  while divisor <= num/2
    #puts "The number is #{num} and the divisor is #{divisor}"
    if num % divisor == 0 
      prime = false
      break
    else
      divisor += 1
    end
  end
  prime
end

#puts isPrime(4)
#puts isPrime(100)
#puts isPrime(999)
#puts isPrime(958297)
#puts isPrime(-7)

#puts isPrime(2)
#puts isPrime(3)
#puts isPrime(5)
#puts isPrime(457)
puts isPrime(39229)