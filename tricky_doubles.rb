# My code was ranked 11 out of 171.

def tricky_doubles(n)
  n_str = n.to_s
  mid = n_str.length / 2
  first_half = n_str[0...mid].to_i
  second_half = n_str[mid..-1].to_i
  first_half == second_half ? n : n * 2
end

p tricky_doubles(15)
p tricky_doubles(100)
p tricky_doubles(4343)
p tricky_doubles(44)
p tricky_doubles(77)
p tricky_doubles(3333)
p tricky_doubles(8787)
p tricky_doubles(100100)