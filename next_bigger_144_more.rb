def next_bigger(number)
  digits = number.to_s.chars.map(&:to_i)
  length = digits.length
  #p digits

  split_index = length - 1
  (length - 1).downto(1) do |i|
    if digits[i] <= digits[i-1]
        split_index = i - 1
    else
      break
    end
  end
  #puts "The split index is #{split_index}"

  if split_index == 0
    #puts "Since the split index is 0, the original number will be returned - #{number}"
    return -1
  end

  left_part_array = digits[0..(split_index -1)]
  right_part_array = digits[split_index..-1]
 
  left_last = left_part_array[-1]
  #puts "left_last is #{left_last}"
  
  bigger_array = []
  right_part_array.each do |element|
    if element <= left_last
      next
    else
      bigger_array << element
    end
  end

#  puts "The bigger_array is #{bigger_array}"

  next_larger = bigger_array.min()
#  puts "The next larger integer than left_last is #{next_larger}"
  next_larger_index = right_part_array.index(next_larger)
#  puts "The next larger integer than left_last is at index #{next_larger_index} in the right_part_array"

#move next_larger to the left of left_last
right_part_array.delete_at(next_larger_index)
#puts "The new right_part_array with the deleted next larger is #{right_part_array}"
# move the deleted value to the left of the left_last
left_part_array.insert(-2,next_larger)
#puts "The new left_part_array with next_larger added to the left of left_last is #{left_part_array}"

right_part_array.push left_part_array.delete_at(-1)

final_number = (left_part_array + right_part_array.sort()).join.to_i
puts "The original number was #{number}"
puts final_number
final_number
end

next_bigger(34722641)
next_bigger(647)
next_bigger(1137)
next_bigger(4010)
next_bigger(4357)
next_bigger(6542)
next_bigger(6832)
next_bigger(6943)
next_bigger(7030)
next_bigger(8384)
next_bigger(9125)
next_bigger(613_492_385_167)
next_bigger(123456784987654321)
next_bigger(144)
next_bigger(9861)