#My code was ranked 7th out of 50. The top code was 
# def find_key(key)
#  a, b = key.to_i(16).prime_division.map(&:first)
#  (a-1) * (b-1)
# end 

require "prime"

def find_key(encryption_key)
  prime_arr = encryption_key.to_i(16).prime_division.flatten
  mult_arr = []
  prime_arr.each do |ele| 
    if ele > 1
      mult_arr << ele - 1
    end
  end
  mult_arr.inject(:*)
end

p find_key("47b")
p find_key("2533")
p find_key("1ba9")

def find_key2(encryption_key)
  prime_arr = encryption_key.to_i(16).prime_division.flatten
  mult_arr = []
  prime_arr.map do |ele| 
    if ele > 1
      ele = ele - 1
    end
  end.
  #prime_arr
end

p find_key2("47b")
p find_key2("2533")
p find_key2("1ba9")

