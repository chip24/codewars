def decompose(n)
  p n
  poss_ints = []
  n*n
  poss_ints << (n-1)** 2
  remainder = (n**2) - ((n-1)**2)
  n_range = (1..remainder).to_a
  n_range.each do |i| 
    square_root = Math.sqrt(i)
    if square_root == square_root.floor
      poss_ints << i
    end
  end
  poss_ints
  n_minus_one = (n-1)** 2

  puts "n = #{n} AND n squared = #{n*n}"
  puts "n-1 = #{n-1} AND n-1 squared = #{(n-1)**2}"
  puts "The remainder of n squared and n minus one squared  = #{remainder}"
  puts "The perfect square integers between 1 and n minus one are #{poss_ints}"


  p solutions = []

  4.downto(1) do |i|
    poss_ints.combination(i).each do |combo|
      if combo.sum == remainder
      solutions << (combo + [n_minus_one])
    #break if solutions.length != 0
  end
end
end

p solutions


#p square_root_solutions


if solutions.length == 0
  return nil
elsif solutions.length == 1
  return solutions[0].map {|term| Math.sqrt(term).to_i}
else
  square_root_solutions = solutions.map do |arr|
  arr.map do |term|
    Math.sqrt(term).to_i
  end
  
end
square_root_solutions.max_by {|arr| arr[-2]}

  
end

end

# on 12-24 figure out how to make the code run faster.  It works for all the tests up to n = 123456
#p decompose(50) #Expected: [1, 3, 5, 8, 49] Got: [1, 2, 3, 6, 7, 49]
#p decompose(44) #Expected: [2, 3, 5, 7, 43] Got: [1, 3, 4, 5, 6, 43]
#p decompose(625) #Expected: [2, 5, 8, 34, 624] Got: [1, 4, 8, 12, 32, 624]
#p decompose(5) # Expected: [3,4] Got: nil
#p decompose(7100) # Expected and Got : [2, 3, 5, 119, 7099] but took 6.3 seconds
p decompose(20) # Timed out









