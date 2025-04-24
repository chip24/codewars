# My code was ranked 5 out of 70.  The top code was a single line: numbers.combination(2).detect { |a, b| a * b == c }

def find_a_b(numbers, c)
  factor_arr = []
  numbers.each do |int| 
    if int == 0
      factor_arr << int if c == 0
    elsif c % int == 0
      factor_arr << int
    end
  end

  factor_arr.each do |fac|
    if c == 0
      if factor_arr[0] < 0
        first_non_zero = factor_arr.find {|num| num != 0}
        return [factor_arr[0], 0]
      else
        return [0,factor_arr[1]]
      end
      break
    elsif factor_arr.include?(c/fac)
      if fac == c/fac 
        return [fac, c/fac] if factor_arr.count(fac) > 1
      else
        return [fac,c/fac]
      end
    end
 end
  return nil
end

p find_a_b([1,2,3], 3)
p find_a_b([1,2,3], 6)
p find_a_b([1,2,3], 7)
p find_a_b([1,2,3,6], 6)
p find_a_b([1,2,3,4,5,6], 15)
p find_a_b([0,0,2], 4)
p find_a_b([0,0,2,2], 4)
p find_a_b([-3,-2,-2,-1,0,1,2,3,4], 4)
p find_a_b([-3,-2,-2,-1,0,1,2,3,4], 0) #
p find_a_b([-3,-2,-1,0,1,2,3,4], 4) # DOES NOT WORK
p find_a_b([0,1,2,3], 0)
p find_a_b([0,0,2,3], 0)

# on 4-10 figure out how to deal with c when it's not 0
