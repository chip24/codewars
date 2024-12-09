def simplify(poly)
  sorted_poly = poly.scan(/[^+-]+|[+-]/).map {|term| term.chars.sort.join }.join
  string_with_ones = sorted_poly.gsub(/(?:^|(?<=[+-]))(?=[^\d+-])/, '1')
end

p simplify("dc+dcba")
p simplify("2xy-yx")
p simplify("-a+5ab+3a-c-2a")
p simplify("-abc+3a+2ac")
p simplify("xyz-xz")
p simplify("a+ca-ab")
p simplify("xzy+zby")
p simplify("-y+x")
p simplify("y-x")

