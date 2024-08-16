def sum_dig_pow(a, b)
  range = *(a..b)
  num_hash = {}
  range.each do |int|
    int.digits.map.with_index do |dig, idx|
      hash << dig**(idx+1)
    end

  end
  #arr
end
# on 8-17-24 figure out how to sum the digits and add the sum as a value and the original number as a key to the hash
# on 
p sum_dig_pow(1, 100)

