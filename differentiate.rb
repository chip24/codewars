#require 'active_support'


def differentiate(equation, point)
  def exclude?(string)
    !include?(string)
  end

  # split the equation into separate terms and remove any terms with no x
  arr = equation.split(/(?=[\+\-])\s*/).select {|str| str.include?('x')}

  p arr

  # add a 1 in front of any x without a coefficient

  eq_arr = arr.map! do |str|
    str.gsub(/(?<!\d)x/, '1x')
  end

  p eq_arr
  # remove any x's with no carets and move the exponents with a "*" to index 1 of each array item
  eq_arr.map do |str|
   if str.exclude?("^")
    str.delete('x')
   elsif str.include?('^')
    p exp = str[str.index("^")+ 1] + "*"
    str.insert(0, exp)
  end
end
p eq_arr
# decrease each exponent by 1
 final_arr = eq_arr.map do |str|
  if str.exclude?('^')
    str.delete('x')
  elsif str.include?('^')
   exp = (str[str.index('^')+1].to_i - 1).to_s
   str.chop! 
   str.insert(-1, exp)
  end
end

p final_arr

# replace carets with **

exp_arr = final_arr.map do |str|
  p str
  str.gsub(/\^/,"**")
  #end
end

end_arr = exp_arr.map do |str|
  str.gsub(/x/, '*'+ point.to_s)
end

p end_arr

end_arr.each do |str|
  puts "#{str} evals to #{eval(str)}"
end

p diff_string = end_arr.join("+")

result = eval(diff_string)

end

# on 1-4 figure out why some terms are returning positive instead of negative

#p differentiate("12x+2", 3) # works
#p differentiate("x-66", 3) # works
#p differentiate("x^2-x", 3)# works
#p differentiate("-5x^2+10x+4", 3) # works
#p differentiate("x^2+3x+3",3) # works
#p differentiate("1000x^2+300x+200",531) # works
#p differentiate("21x^2+35x+3",2071) # works
#p differentiate("66x^3+3x^2+3",441) # works
#p differentiate("21x^4+3x^3",414) #works
#p differentiate("-21x^5+3x^3",12398) # works
#p differentiate("-x^2+3x-3",1234567908) # works
p differentiate("-7x^5+22x^4-55x^3-94x^2+87x-56",-3) # doesn't work
#p differentiate("-123x^5+3x",8559) # works
#p differentiate("x^2",59884848483559) # works

p 5*-7*(-3)**4




