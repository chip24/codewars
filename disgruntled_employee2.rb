def off(switches)
  switch_arr = Array.new(switches, "OFF")
  pass = 2

  return [] if switches == 0
  return 1 if switches == [1]

  until pass > switches do
    (1..switches).each do |switch| 
      if switch % pass == 0
        if switch_arr[switch -1] == "OFF"
          switch_arr[switch - 1] = "ON"
        else
          switch_arr[switch - 1] = "OFF"
        end
      end
    end
    pass += 1
  end
  switch_arr.map.with_index {|item, idx| idx + 1 if item == "OFF"}.compact
end

# on 8-10 figure out the looping logic and start on page 290 of LERTBD and research how to update gem version to Rubygems.org

#p off(0) #[])
#p off(1) #[1])
#p off(3) #[1])
#p off(4) #[1,4])
#p off(9) #[1,4,9])
p off(900)