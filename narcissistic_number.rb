#this was the top answer on Codewars
#def narcissistic?(n)
#n == n.digits.map { |d| d**n.digits.size } .sum
#end

def narcissistic?(value)
  value_array = value.to_s.chars.map(&:to_i)
  if value_array.sum {|num| num**value.to_s.length} == value
    true
  else
    false
  end 
end

p narcissistic?(153)
p narcissistic?(1652)
p narcissistic?(370)
p narcissistic?(371)
p narcissistic?(407)