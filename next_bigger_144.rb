def next_bigger(number)
  digits = number.to_s.chars.map(&:to_i)
  length = digits.length
  p digits

  split_index = length - 1
  (length - 1).downto(1) do |i|
     
    if digits[i] <= digits[i-1]
        split_index = i - 1
    else
      break
    end
  end
  puts "The split index is #{split_index}"

  if split_index == 0
    puts "Since the split index is 0, the original number will be returned - #{number}"
    return number
  end

  


  #p left_part = digits[0..(split_index -1)].join.to_i
  #p right_part = digits[split_index..-1].join.to_i
  p left_part_array = digits[0..(split_index -1)]
  p right_part_array = digits[split_index..-1]
  # using modulo with 10 will return the last digit of a number
  left_last = left_part_array[-1]
  puts "left_last is #{left_last}"
  # on 7-22 find out how to keep the bigger array from being nil on 144
  
  bigger_array = []
  right_part_array.each do |element|
    if element < left_last
      next
    #elsif element == left_last
    #  bigger_array << element
    else
      bigger_array << element
    end
  end

  puts "The bigger_array is #{bigger_array}"

  # on 7-21-2024 find out how to swap the last element from the left array with the next larger element in the right array
  p next_larger = bigger_array.min()
  puts next_larger_index = right_part_array.index(next_larger)

  new_left_part_array = left_part_array[0...-1] << next_larger
  p new_left_part_array
  new_right_part_array = right_part_array.map do |e|
    if e == next_larger
      left_last
    else
      e
    end
  end
  p new_right_part_array.sort()
  final_number = (new_left_part_array + new_right_part_array.sort()).join.to_i
  #puts final_number.class
  puts "The original number was #{number}"
  puts final_number
  puts "----------------------------------"
      



end

=begin
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
=end
next_bigger(144)