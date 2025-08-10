def get_w(height)
  return [] if height < 2
  vert_arr = []

  rows = 4 * height - 4
  p rows
  (0..rows).each do |row|
    p "Row #{row} has a remainder of #{row % height}"
    mod = row % height
    line = ""
    (0..height-1).each do |hgt|
      if hgt == mod
        line << "*"
      else
        line << " "
      end  
    end
    vert_arr << line 
  end

  p vert_arr.size
  p vert_arr
  vert_arr.reverse
  #vert_arr.transpose
  #p grouped = vert_arr.each_slice(height).to_a
  #transposed = grouped.map(&:join)
  #result = transposed.map {|row| row.join }

end

# on 6-28 find out how to get the asterisks in the right positions

#p get_w(-5)
#p get_w(1)
#p get_w(3)
#p get_w(4) 
p get_w(5)
#p get_w(7) 

