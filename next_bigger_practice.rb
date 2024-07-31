# on 7-20 implement the pseudocode from the last saved Stackoverflow page

def next_largest(n)
  nxt = nl(n.to_s.chars.map(&:to_i))
  return nil if nxt.nil?
  nxt.map(&:to_s).join.to_i
end

def nl(arr, remaining_digits=arr.sort)
  if arr.size == 1
    return (remaining_digits.first > arr.first) ? remaining_digits : nil
  end 

  first = arr.first
  remaining_arr = arr.drop(1)

  remaining_digits.each_index do |i|
    d = remaining_digits[i]
    rest =
    case i
    when 0 then remaining_digits.drop(1)
    when remaining_digits.size-1 then remaining_digits[0..-2]
    else [*remaining_digits[0..i-1], *remaining_digits[i+1..-1]]
    end
    return [d, *rest] if d > first
    if d == first
      arr = nl(remaining_arr, rest)
      return [d, *arr] if arr
    end
  end
  nil    
end  

puts next_largest(647)
puts next_largest(1137)
puts next_largest(4010)
puts next_largest(4357)
puts next_largest(6542)
puts next_largest(6832)
puts next_largest(6943)
puts next_largest(7030)
puts next_largest(8384)
puts next_largest(9125)
puts next_largest(613_492_385_167)