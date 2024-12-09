def simplify(poly)
  # Split the input into terms with their signs and coefficients
  terms = poly.scan(/([+-]?)(\d*)([a-z]+)/).map do |sign, coeff, vars|
    # Default coefficient to 1 if it's missing
    coeff = coeff.empty? ? 1 : coeff.to_i
    # Apply the sign to the coefficient
    coeff = -coeff if sign == '-'
    coeff = +coeff if sign == '+'
    
    # Sort the variables in each term alphabetically
    sorted_vars = vars.chars.sort.join
    [coeff, sorted_vars]
  end
  
  # Sum the coefficients of like terms
  grouped_terms = terms.each_with_object(Hash.new(0)) do |(coeff, vars), hash|
    hash[vars] += coeff
  end
  
  # Construct the simplified expression
  simplified_expression = grouped_terms.map do |vars, coeff|
    next if coeff == 0 # Skip terms with a zero coefficient
    
    if coeff == 1
      "+#{vars}"
    elsif coeff == -1
      "-#{vars}"
    else
      coeff > 0 ? "+#{coeff}#{vars}" : "#{coeff}#{vars}"
    end
  end.compact.join
  
  # Remove the leading '+' sign if present
  simplified_expression.sub(/^\+/, "")
end

# Test cases
puts simplify("-a+5ab+3a-c-2a")           # Expected: "-a+5ab+3a-c-2a"
puts simplify("xzy+zby")                  # Expected: "xyz+byz"
puts simplify("-12dy+9yzd-9dyz-13y+8y-10yzd-11yd+15yd+9y") # Expected: "-12dy+9dyz-9dyz-13y+8y-10dyz-11dy+15dy+9y"
