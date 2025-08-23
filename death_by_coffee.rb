# My code was ranked 2nd after I upvoted it.  I needed to Google to figure out how to switch from decimal to hex and the remember the syntax of the date module.

require 'date'

def coffee_limits(year, month, day)
  date_object = Date.new(year, month, day)
  b_day = date_object.strftime("%Y%m%d").to_i
  b_day_hex = date_object.strftime("%Y%m%d").to_i.to_s(16)
  dead_arr = [0,0]
  (1..5000).each do |num|
    dead_cafe = num * 51966
    if (b_day + dead_cafe).to_s(16).include?('dead')
      #puts "DEAD at #{num}"
      dead_arr[0] = num
      break
    end
  end
  (1..5000).each do |num|
    dead_decaf = num * 912559
    if (b_day + dead_decaf).to_s(16).include?('dead')
      #puts "DEAD at #{num}"
      dead_arr[1] = num
      break
    end
  end
  dead_arr
end

# on 8-23 start on page 367  of LERTBD and find out the math to get the code to return 2645 instead of 895.

p coffee_limits(1950, 1, 19) # [2645, 1162]
p coffee_limits(1965,12,11) # [111,0]
p coffee_limits(1964, 11, 28) # [0, 11]
p coffee_limits(1965, 9, 4) # [0,0]