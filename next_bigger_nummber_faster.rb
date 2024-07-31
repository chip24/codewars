def next_bigger(number)
    digits = number.to_s.chars.map(&:to_i)
    length = digits.length

    split_index = length - 1
    (length - 1).downto(1) do |i|
      if digits[i] < digits[i-1]
      split_index = i -1
      else
        break
      end
    end
    puts "The split index is #{split_index}"

    p left_part = digits[0..(split_index -1)].join.to_i
    p right_part = digits[split_index..-1].join.to_i
    p left_part_array = digits[0..(split_index -1)]
    p right_part_array = digits[split_index..-1]
    # using modulo with 10 will return the last digit of a number
    left_last = left_part % 10
    puts "left_last is #{left_last}"
    bigger_array = []
    right_part_array.each do |element|
      if element <= left_last
        next
      else
        bigger_array << element
      end
    end
    p next_larger = bigger_array.min()

    left_part_array[-1] = 



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
