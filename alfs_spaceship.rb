#My code was ranked 6th out of 153.  No AI used.

def find_spaceship(map)
  arr_of_arr = map.split("\n").map do |line|
    line.chars.map(&:strip)
  end.reverse

  coord = []
  arr_of_arr.each_with_index do |sub_arr, index|
    if sub_arr.include?("X")
      coord << index
      sub_arr.each_with_index do |str, idx|
        if str == "X"
          coord << idx 
        end
      end
    end
  end

  if coord.size == 0
    "Spaceship lost forever."
  else
    coord.reverse
  end
end

# on 1-15 figure out how to get the index of the "X" in the sub_array
#p find_spaceship("..\nX.")

p find_spaceship("X")
#p find_spaceship("..\nX.")
#p find_spaceship("..\n.X")
#p find_spaceship("X.\n..")
#p find_spaceship(".X\n..")
#p find_spaceship("..\n..")


