# I found a Python solution to this problem on Stackexchange and converted it to Ruby with the help of ChatGPT.  The top Codewars answers were similar to mine.


def divisors(n)
  divsum = 1
  (2..Math.sqrt(n)).each do |i| 
    d,m = n.divmod(i)
    if m == 0
      divsum += i
      divsum += d if i != d
      end
    end
    p divsum
    divsum
end

def buddy(start, limit)
  (start..limit).each do |i|
    sum1 = divisors(i)
    next if start > sum1 - 1 || i > sum1

    sum_minus1 = divisors(sum1 - 1)
    return "(#{i} #{sum1 - 1})" if i == (sum_minus1 - 1)
  end
  "Nothing"
end


p buddy(10,50)
#p buddy(1071625, 1103735)
p buddy(57345, 90061)
p buddy(2177, 4357)
#p divisors(48)


