#Mine was similar to one of the top answers in Codewars.  Using "tr" was clever, but I could have used the #digits method to avoid having to turn the numbers into strings first.  I refactored below in balance2.  The top answer is below.  It used #count to count the number of each character and multiplication.

# def balance(left, right)
#  a = left.count('!') * 2 + left.count('?') * 3
#  b = right.count('!') * 2 + right.count('?') * 3
#  a == b ? "Balance" : a > b ? "Left" : "Right"
#end

def balance(left, right)
  left_sum, right_sum = [left,right].map {|str| str.tr("!?", "23")
  }.map {|str| str.chars.map(&:to_i).sum}
  case 
  when left_sum > right_sum
    "Left"
  when left_sum < right_sum
    "Right"
  when left_sum == right_sum
    "Balance"
  end
    
end

p balance("!!???!????", "??!!?!!!!!!!")
p balance("", "")
p balance("!!", "??")
p balance("!??", "?!!")
p balance("!?!!", "?!?")
p balance("!!???!????", "??!!?!!!!!!!")

def balance2(left, right)
  left_sum, right_sum = [left,right].map {|str| str.tr("!?", "23")
  }.map {|str| str.to_i.digits.sum}

  case 
  when left_sum > right_sum
    "Left"
  when left_sum < right_sum
    "Right"
  when left_sum == right_sum
    "Balance"
  end
    
end

p balance2("!!???!????", "??!!?!!!!!!!")
p balance2("", "")
p balance2("!!", "??")
p balance2("!??", "?!!")
p balance2("!?!!", "?!?")
p balance2("!!???!????", "??!!?!!!!!!!")

