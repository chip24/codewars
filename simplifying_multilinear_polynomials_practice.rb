def simplify(poly)
  p poly
  sorted_poly = poly.scan(/[^+-]+|[+-]/).map {|term| term.chars.sort.join }.join

  p "SORTED POLY is: #{sorted_poly}"
  string_with_ones = sorted_poly.gsub(/(?:^|(?<=[+-]))(?=[^\d+-])/, '1')

  p string_with_ones
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
