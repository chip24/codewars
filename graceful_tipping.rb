#My code was ranked 7 out of 92 on CodeWars.  I had to Google Stackoverflow several times to find out about rounding up.

def graceful_tipping2(bill)
  tipped = bill * 1.15
  parts = tipped.to_s.split(".")
  
  if parts[0].length == 1
    tipped.ceil
  else
    size = (bill.to_s.length) -1
    tipped_size = (tipped.ceil.to_s.length) -1
    rounded = tipped.round(-1*tipped_size)
    supp = 5 * (10 ** (tipped_size-1))
    rounded > tipped ? rounded : rounded + supp
  end
end

p graceful_tipping2(1) # 2
p graceful_tipping2(6.51) # 9
p graceful_tipping2(12) # 15
p graceful_tipping2(86) # 100
p graceful_tipping2(99) # 150
p graceful_tipping2(1149)# 1500
p graceful_tipping2(983212) # 1500000



def graceful_tipping2(bill)
  tipped = bill * 1.15
  if bill.to_s.length == 1
    tipped.ceil
  else

  puts "Tipped is: #{tipped}"
  size = (bill.to_s.length) -1
  tipped_size = (tipped.ceil.to_s.length) -1
  puts "Tipped_size is #{tipped_size}"
  
  puts "Size is: #{size}"
  rounded = tipped.round(-1*tipped_size)
  puts "Rounded is #{rounded}"
  
  supp = 5 * (10 ** (tipped_size-1))
  puts "Supp is #{supp}"
  rounded > tipped ? rounded : rounded + supp

  #rounded > tipped ? rounded + supp : rounded
end
end

#p graceful_tipping2(1)
#p graceful_tipping2(7)
#p graceful_tipping2(12) # 15
#p graceful_tipping2(86) # 100
#p graceful_tipping2(99) # 150
#p graceful_tipping2(1149)# 1500
#p graceful_tipping2(983212) # 1500000

# on 3-23 tweak algorithm to make rounding work



