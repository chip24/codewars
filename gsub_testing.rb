#I tried this solution before I submitted my actual solution, but it didn't work because I didn't know that I needed the parentheses around [A-Z]

def solution(string)
  p string.gsub /([A-Z])/, ' \1'
end

solution("camelCasing")
solution("identifier")
solution("")


#"camelCasing".gsub()