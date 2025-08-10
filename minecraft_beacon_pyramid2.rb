def blocks_to_collect(level)
  pyramid = { total: 0, gold: 0, diamond: 0, emerald: 0, iron: 0 }
  level_arr = [0, 9, 25, 49, 81, 130, 194, 274, 370, 491, 635, 803, 995, 1220, 1476]
  total_sum = 0
  

  if level > 3
    pyramid[:gold] = level_arr[level-3]
    pyramid[:diamond] = level_arr[level-2]
    pyramid[:emerald] = level_arr[level-1]
    pyramid[:iron] = level_arr[level]
  elsif level == 3
    pyramid[:gold] = level_arr[level-2]
    pyramid[:diamond] = level_arr[level-1]
    pyramid[:emerald] = level_arr[level]
  elsif level == 2
    pyramid[:gold] = level_arr[level-1]
    pyramid[:diamond] = level_arr[level]
  elsif level == 1
    pyramid[:gold] = level_arr[level]
  end


    
  pyramid.each_with_index do |(k, v), i|
    if i >= 1
      total_sum += v
    end
  end

  pyramid[:total] = total_sum
  pyramid

end

#Figure out logic on 6-17.  Probably need an if elsif part to deal with levels under 4 and over 4 to handle the [level - X ] part

p blocks_to_collect(9)
#p blocks_to_collect(1)