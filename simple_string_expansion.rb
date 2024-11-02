# I needed Copilot to help me with the the until section of the code.  My code was 8th on Codewars.  This was harder than expected.  The top code, which is confusing, is below.

#def solve s
#  ((r = /(\d*)\(([a-z]*)\)/i) =~ s) ? solve(s.gsub(r) { $2 * ($1 == "" ? 1 : $1.to_i) }) : s
#end

def solve(st)
  elements = st.delete("\(\)").chars.reverse
  result = elements.shift

  until elements.empty?
    element = elements.shift

    if element.match?(/\d/)
      result = result * element.to_i
    else
      result = element + result
    end
  end

  result
end

p solve("3(ab)")
p solve("k(a3(b(a2(c))))") # should output "kabaccbaccbacc"

