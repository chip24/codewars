# My code was ranked 10 out of 166. I submitted colorful2?, which I mainly got from Substack. I had to add the conditions for single digit integers and integers that include 0 or 1.  Evidently, Set will only allow one of each value, so it will return false if can't add a value to the set since it already exists in it.

require 'set'

def colorful?(number)
  arr = []
  products = Set.new

  number.digits.each do |digit| 
    arr << digit 
  end

  (1..arr.size-1).each do |n| 
    arr.each_cons(n) {|a| return false unless products.add?(a.reduce(:*))}
  end
  true



  #return true if arr.size == 1

  

end

=begin

p colorful?(5) # true) # Single digit number?
p colorful?(23) # true)  # Two digit number?
p colorful?(263) # true) # Multiple digit number?
p colorful?(235789) # true)  # Very large number?
p colorful?(50) # false) # Number with digit zero?
p colorful?(13) # false) # Two digit number with duplicate products?
p colorful?(236) # false)  # Multiple digit number with duplicate products?
p colorful?(2357893) # false)  # Very large number with duplicate products?
=end

require 'set'

def colorful2?(n)
  digits = n.digits.reverse
  return true if digits.size == 1
  return false if digits.include?(0) || digits.include?(1)
  
  
  products = Set.new
  (1..digits.size-1).each do |n|
    digits.each_cons(n) { |a| return false unless products.add?(a.reduce(:*)) }
  end
  true
end

p colorful2?(5) # true) # Single digit number?
p colorful2?(23) # true)  # Two digit number?
p colorful2?(263) # true) # Multiple digit number?
p colorful2?(235789) # true)  # Very large number?
p colorful2?(50) # false) # Number with digit zero?
p colorful2?(13) # false) # Two digit number with duplicate products?
p colorful2?(236) # false)  # Multiple digit number with duplicate products?
p colorful2?(2357893) # false