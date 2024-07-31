def solution(number)
  num = number - 1
  mult_arr = []
  if number < 0
    return 0
  else
   while num > 0
    if num % 5 == 0
      mult_arr << num
    elsif num % 3 == 0
      mult_arr << num  
    end
    num -= 1
  end
end
  mult_arr.sum
end

solution(-2)
solution(10)
solution(15)