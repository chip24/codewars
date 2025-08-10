def off(switches)
  return [] if switches == 0
  return 1 if switches == 1
  switch_arr = Array.new(switches, "OFF")
  pass = 2

  until pass > switches do
    (1..switches).each_with_index do |switch, idx| 
      p "switch is #{switch} and pass is #{pass}"
      #p "pass is #{pass}"
      if switch % pass == 0
        p "#{switch} modulo #{pass} is ZERO!"
        if switch == "OFF"
          switch_arr[switch - 1] = "ON"
        else
          switch_arr[switch - 1] = "OFF"
        #witch_arr[switch] = "OFF"
      #else
        #switch_arr[idx] = "ON"
      end
      end
    end
    p "switch_arr after pass ##{pass} is #{switch_arr}"
    pass += 1
  end
  switch_arr
end

# on 8-10 figure out the looping logic and start on page 290 of LERTBD and research how to update gem version to Rubygems.org

#p off(0) #[])
#p off(1) #[1])
#p off(3) #[1])
p off(4) #[1,4])
#p off(9) #[1,4,9])