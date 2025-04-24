# My code was ranked 9 out of 183.  I just needed to Google how to fix my syntax to sum the array of numbers after the number.


def array_leaders(numbers)
  numbers << 0
  p numbers
  leaders = []
  numbers.each_with_index do |num, idx|
    if idx >= numbers.length - 1
      break
    else
      p "The number is #{num} and the sum of the elements to its right is #{numbers[idx+1..-1].sum}"
      if num > numbers[idx+1..-1].sum
        leaders << num
      end
    end 
  end
  leaders
end

#p array_leaders([1, 2, 3, 4, 0])
#p array_leaders([16, 17, 4, 3, 5, 2])
#p array_leaders([5, 2, -1])
p array_leaders([0, -1, -29, 3, 2])


# on 4-21, figure out how to compre the number to the sum of the elements to its right