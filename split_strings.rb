def solution(str)
  str.length.odd? ? str << "_" : str
  str.scan(/../)
end

p solution("chip")
p solution("bacon")