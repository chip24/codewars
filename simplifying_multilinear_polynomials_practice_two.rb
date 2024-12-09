# This code was a PITA and I used AI for some of it.  Here's the top answer on Codewars:

=begin
def simplify(poly)
  poly.scan(/([\+-]*\d*)([a-z]+)/).map do |i| 
    str = i[1].split("").sort.join
    i[0] =~ /^[\+-]$/ || i[0].empty? ? [(i[0]+"1").to_i, str] : [i[0].to_i, str]
  end.inject(Hash.new(0)) do |h, arr|
    h[arr[1]] += arr[0]
    h
  end.sort_by { |(k, v)| [k.length, k] }.select { |i| i[1] != 0 }
  .map { |i| i[1].to_s + i[0] }.join("+")
  .gsub(/([\+-])1([a-z])/,'\1\2').gsub(/\+-/, "-").gsub(/^1([a-z].*)$/, '\1')
end
=end


def simplify(poly)
  #p poly
  
  sorted_poly = poly.scan(/[-+]?\d*[a-z]+|[-+]?\d+/).map do |term|
  if term =~ /^([-+]?\d*)([a-z]+)$/
    coefficient = $1
    variables = $2.chars.sort.join
    "#{coefficient}#{variables}"
  else
    term # For standalone coefficients or constants
  end
end.join

  string_with_ones = sorted_poly.gsub(/(?<=[+-]|^)(?=[a-z])/, '1')


  #p string_with_ones
  # Parse the string into terms (including coefficients and variables)
  terms = string_with_ones.scan(/[-+]?\d*[a-z]+|[-+]?\d+/)

  # Create a hash to group coefficients by their variable part
  grouped_terms = Hash.new(0)

  terms.each do |term|
    # Extract the coefficient and variable part
    if term =~ /^([-+]?\d*)([a-z]+)?$/
      coefficient = $1.empty? || $1 == "+" ? 1 : ($1 == "-" ? -1 : $1.to_i)
      variable = $2 || "" # If no variable, treat it as a constant
      grouped_terms[variable] += coefficient
    end
  end

  # Construct the simplified expression from grouped terms
  simplified_terms = grouped_terms.map do |variable, coefficient|
    next if coefficient == 0 # Skip terms with a zero coefficient
    if coefficient == 1 && !variable.empty?
      "+#{variable}"
    elsif coefficient == -1 && !variable.empty?
      "-#{variable}"
    elsif coefficient > 0
      "+#{coefficient}#{variable}"
    else
      "#{coefficient}#{variable}"
    end
  end

  # Sort terms by length and alphabetically
  sorted_terms = simplified_terms.compact.sort_by do |term|
    variable_part = term.gsub(/[-+0-9]/, "") # Extract the variable part
    [variable_part.length, variable_part]
  end

  # Join the terms together and remove the leading '+' if it's the first term
  simplified_expression = sorted_terms.join
  simplified_expression.sub(/^\+/, "")
end

# on 11-29 see if this new sorted_poly works for other inputs.  It seems to be working for the one that was sorting 10 to be 01

p simplify("cd+abcd")
p simplify("2xy-xy")
p simplify("-a+5ab+3a-c-2a")
p simplify("-abc+3a+2ac")
p simplify("xyz-xz")
p simplify("a+ac-ab")
p simplify("xyz+byz")
p simplify("-y+x")
p simplify("y-x")
p simplify("xzy+zby")
p simplify("-12dy+9yzd-9dyz-13y+8y-10yzd-11yd+15yd+9y")


