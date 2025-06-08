#I submitted:
#def convert(time)
 # time.strftime('%H:%M:%S,%L')
#end
# because the method below, which worked in Sublime, didn't work in CodeWars.  My code was ranked 3 out of 117.

def convert(*time)
  t = Time.new(*time)
  t.strftime('%H:%M:%S,%L')
end

p convert(2016, 2, 8, 16, 42, 59) # "16:42:59,000")
#p convert(1951, 10, 31, 2, 2, 24.4)# "02:02:24,399")
#p convert(1523, 5, 29, 23, 2, 2.01)# "23:02:02,009")
p convert(1850, 12, 30, 23, 59, 59.876, "-02:00")# "23:59:59,875")
p convert(1850, 12, 30, 23, 59, 59.8763, "-02:00")# "23:59:59,876")
#p convert(1850, 12, 30, 13, 39, 19)# "13:39:19,000")
#p convert(1978, 3, 18, 12, 0, 0, 0)# "12:00:00,000")
#p convert(1850, 12, 30, 11, 11, 11.15)# "11:11:11,150")
#p convert(1850, 12, 30, 0, 0, 0.470)# "00:00:00,469")

# on 5-11 figure out how to get hours and minutes to two digits and how to return milliseconds as three digits.
