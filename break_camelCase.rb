def solution(string)
  new_arr = []
  string.chars.each do |char|
    if char == char.upcase
      new_arr << " "
      new_arr << char
      
    else
      new_arr << char
    end
  end
 new_arr.join
end


solution("camelCasing")
solution("identifier")
solution("")