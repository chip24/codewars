#Codewars top example
#def up_array(arr)
#  return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
#  arr.join.next.chars.map(&:to_i)
#end

def up_array(arr)
  negative_count = arr.count {|num| num < 0 }
  p negative_count
  over_nine_count = arr.count {|num| num >9 }
  p over_nine_count
  if negative_count >= 1
    return nil
  elsif over_nine_count >= 1
    return nil
  elsif arr.size = 0
    return nil
  else
    new_arr = (arr.join.to_i + 1).to_s.split('').map {|s| s.to_i}
  end
    p "The new array size is #{new_arr.size}"
    p " The original array size is #{arr.size}"
    if new_arr.size < arr.size
      diff = arr.size - new_arr.size
      new_arr.unshift(0 * diff)
    else
      new_arr
    end

end

#on 8-29 figure out how to deal with leading zeros and negative integers

p up_array([4, 3, 2, 5])
p up_array([1, 2, 3, 9])
p up_array([9, 9, 9, 9])
p up_array([0, 1, 3, 7])
p up_array([1, -9])
p up_array([0,4,2])
