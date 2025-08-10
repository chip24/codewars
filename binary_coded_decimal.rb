# My code was ranked 2 out of 74 after I upvoted it.  I only Googled to find the syntax for absolute value, how to transform an integer to 4 digit binary, and the method (prepend) to add something to the beginning of a string. 

class Integer

  def to_bcd
    bin_arr = []
    abs_val = self.abs
    
    abs_val.to_s.chars.each do |char|
      bin_arr << sprintf("%04b", char.to_i)
    end
    
    if self < 0
      bin_arr.map.with_index do |str, idx|
        if idx == 0
          str.prepend("-")
        else
          str
        end
      end.join(" ")
    else
      bin_arr.join(" ")
    end
  end
end

# on 8-6, figure out how to remove minus sign an then add it back

# on 8-6 start on page 264 of LERTBD

p 1.to_bcd # "0001")
p 300.to_bcd # "0011 0000 0000")
p -10.to_bcd # "-0001 0000")
p -1.to_bcd # "-0001")
p -300.to_bcd # "-0011 0000 0000")
p -123456789.to_bcd # "-0001 0010 0011 0100 0101 0110 0111 1000 1001")

