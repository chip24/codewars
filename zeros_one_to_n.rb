# I submitted count_zeros3, and it was ranked 4 out of 117. The top code was a single line: (10..n).to_a.join.count('0')

def count_zeros(n)
  arr = (1..n).to_a
  count = 0
  arr.each do |num| 
    if num % 100 == 0
      count += 2
    elsif num % 10 == 0
      count += 1
    end
  end
  count
end

p count_zeros(10)
p count_zeros(20)
p count_zeros(100)
p count_zeros(200)

def count_zeros2(n)
  if n <= 9
    return 0 
  end
  n2 = (n - 9) / 10
  return 10 * count_zeros2(n2) + n2
end

p count_zeros2(10)
p count_zeros2(20)
p count_zeros2(100)
p count_zeros2(200)

# Figure out this algorithm on 4-5

def count_zeros3(n)
  count = 0
  arr = (1..n).to_a.map {|num| num.to_s}
  arr.each do |str|
     count += str.chars.count("0")
   end
  count
end

p count_zeros3(10)
p count_zeros3(20)
p count_zeros3(100)
p count_zeros3(200)


