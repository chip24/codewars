# the top Codewars answer was much shorter than mine

#def solution(n)
#  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
#end

def solution(n)
  num_string = n.to_s.chars
  num_string_length = num_string.length
  case num_string_length
  when 0..3
    num_string
  when 4..6
    num_string.insert(-4,",") 
  when 7..9
    num_string.insert(-4,",") && num_string.insert(-8,",")
  when 10
    num_string.insert(1,",") && num_string.insert(5,",") && num_string.insert(9, ",")

  end.join

end


p solution(100)
p solution(1000)
p solution(10000)
p solution(100000)
p solution(1000000)
p solution(10000000)
p solution(100000000)
p solution(2147483647)