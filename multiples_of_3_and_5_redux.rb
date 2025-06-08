# My code (solution3) was ranked 7 out of 130.  I think my solution 2 would have worked if I have subtracted multiples of 15, but I stumbled across solution3 on Copilot when I was looking for the basic math algorithm for finding the sum of all multiples of a certain number.  Actually, I'm going to sutract the multiples of 15 and resubmit solution2 and see what happens.  It worked, but now solution2 is ranked 7th and solution3 is ranked 8th.

def solution(number)
  arr = []
  (3..(number-1)).each do |int| 
    if int % 3 == 0 || int % 5 == 0 
      arr << int
    end
  end
  arr.uniq.sum
end

#p solution(10)#.to eq 23
#p solution(20)#.to eq 78
#p solution(100)#.to eq 2318
#p solution(200)#.to eq 9168
#p solution(1000)#.to eq 233168
#p solution(10000)#.to eq 23331668

def solution2(num) 
  number = num - 1
  mult_of_three = number/3
  sum_of_three = ((3 * mult_of_three + 3) * mult_of_three) / 2
  mult_of_five = number/5
  sum_of_five = mult_of_five * (5 + 5 * mult_of_five) / 2
  mult_of_fifteen = number/15
  sum_of_fifteen = mult_of_fifteen * (15 + 15 * mult_of_fifteen) / 2

  sum_of_three + sum_of_five - sum_of_fifteen
end

# on 5-22 check math on algorithm since it's not adding up to the same as in Gemini.

p solution2(50000000)
#p solution2(10)#.to eq 23 WORKS
#p solution2(20)#.to eq 78
#p solution2(100)#.to eq 2318
#p solution2(200)#.to eq 9168
#p solution2(1000)#.to eq 233168
#p solution2(10000)#.to eq 23331668

def solution3(number)
  def sum_of_multiples(x, limit)
    n = (limit-1) / x
    x * n * (n + 1) / 2
  end

  sum_of_multiples(3, number) + 
  sum_of_multiples(5, number) - 
  sum_of_multiples(15, number)
end

#p solution3(50000000)
#p solution3(10)#.to eq 23 WORKS
#p solution3(20)#.to eq 78
#p solution3(100)#.to eq 2318
#p solution3(200)#.to eq 9168
#p solution3(1000)#.to eq 233168
#p solution3(10000)#.to eq 23331668
