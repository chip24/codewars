def off(switches)
  return [] if switches == 0
  return 1 if switches == 1
  switch_arr = []

  
  (1..switches).each_with_index do |num, idx| 
    p "num is #{num} and idx + 1 is #{idx + 1}"
    if num % (idx + 1) == 0
      
      switch_arr.insert(idx, "OFF")
    else
      switch_arr.insert(idx, "ON")
    end
  end
  switch_arr
end

# on 8-8 figure out the looping logic and start on page 288 of LERTBD and research how to push gem to Rubygems.org

#p off(0) #[])
#p off(1) #[1])
#p off(3) #[1])
p off(4) #[1,4])
#p off(9) #[1,4,9])