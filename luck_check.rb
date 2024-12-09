def luck_check(str)
  #str.scan(/\D/).empty?
  #p str.include?(/[^0-9]/)
  #p str !~ /\D/
  scan = str.scan(/\D/)
  puts "SCAN is #{scan.length}"
  if str.empty? || scan.length >= 1
    #|| str !~ /\D/ == false
    puts "IT'S EMPTY!!"
    raise RuntimeError, "Invalid string"
  else
   #str !~ /\D/

    mid_point = (str.length)/2

    str.length.even? ? equal_arr = [str[0..mid_point-1],str[mid_point..-1]] : equal_arr = [str[0..mid_point-1],str[mid_point+1..-1]]
      
    int_arr = equal_arr.map {|str| str.to_i.digits.sum}
    
    int_arr[0] == int_arr[1] ? true : false
 
  end
end

# on 11-4, find out how to raise an error for any empty string or string that contains anything other than digits

#p luck_check('683179')
#p luck_check('68300')
p luck_check("")
#p luck_check('6F43E8')