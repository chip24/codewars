#None of the Codewars solutions were much shorter than mine

require 'time'

def cuckoo_clock(input_time, chimes)
  
  t = Time.strptime(input_time, "%I:%M")

  rounded_t = t - t.sec-t.min%15*60
  #p rounded_t
  if t.min == 15 || t.min == 30 || t.min == 45
    chimes -= 1
    elsif t.min == 0
    chimes -= t.hour
  end 
  
  until chimes <= 0
    
    rounded_t+= 900
    if rounded_t.min == 15
      chimes -=1
    elsif rounded_t.min == 30
      chimes -= 1
    elsif rounded_t.min == 45
      chimes -= 1
    elsif rounded_t.min == 00 && rounded_t.hour == 00
      chimes -= 12
    elsif rounded_t.min == 00 && rounded_t.hour > 12
      chimes -= (rounded_t.hour - 12)
    else
      chimes -= rounded_t.hour
    end
    #puts "Rounded hour is #{rounded_t.hour}"
    #puts "Rounded_T is #{rounded_t.strftime("%I:%M")}"
    #puts "Chimes = #{chimes}"
  end
 rounded_t.strftime("%I:%M")
end

=begin
p cuckoo_clock("07:22",1)
p cuckoo_clock("12:22",2)
p cuckoo_clock("01:30",2)
p cuckoo_clock("04:01",10)
p cuckoo_clock("03:38",19)

puts "----------------------"
# on 9-21 find out why the below doesn't return "08:00"
p cuckoo_clock("08:17",113)
p cuckoo_clock("08:17",114)
p cuckoo_clock("08:17",115)
p cuckoo_clock("08:17",150)
p cuckoo_clock("08:17",200)
# on 9-21 find out why the below doesn't return "01:00"
puts "*********************"
p cuckoo_clock("10:00",1)
p cuckoo_clock("10:00",10)
p cuckoo_clock("10:00",11)
p cuckoo_clock("10:00",13)
p cuckoo_clock("10:00",20)

puts "#####################"
p cuckoo_clock("12:30", 1)
p cuckoo_clock("12:30", 2)
p cuckoo_clock("12:30", 3)
p cuckoo_clock("12:30", 4)
p cuckoo_clock("09:53", 50)
=end
# on 9-22 figure out why this is the only one that's not working.  It should output 5:45 instead of 7:00
p cuckoo_clock("08:17",200)


