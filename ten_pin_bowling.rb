def bowling_score(frames)
  if frames.match?(/\A[\d\s]*\z/) == true
    str_arr = frames.split(" ").map {|str| str.chars}
    int_arr = str_arr.map {|inner_arr| inner_arr.map {|str| str.to_i}}
    int_arr.map {|inner_arr| inner_arr.sum}.sum
  else
    str_arr = frames.split(" ").map {|str| str.chars}
    strike_arr = str_arr.map do |sub_arr|
      sub_arr.map do |str|
          str.gsub("X","10")
      end
    end

    spare_arr = strike_arr.map do |sub_arr|
      sub_arr.map do |str|
        num = (10 - sub_arr[0].to_i).to_s + "s"
        str.gsub("/",num)
      end
    end
    puts "SPARE_ARR is #{spare_arr}"
    puts "SPARE_ARR[-1][-1] is #{spare_arr[-1][-1]}"
    popped_off = []
    if spare_arr[-1].length == 3 && spare_arr[-2] == ["10"] #&& spare_arr[-1][0] == "10"
       popped_off << spare_arr[-1].pop
       popped_off << "-10"
    elsif spare_arr[-1].length == 3 && spare_arr[-2] == ["10"] && spare_arr[-1][-1] != "10"
      popped_off << spare_arr[-1].pop
      
    elsif spare_arr[-1].length == 3 && spare_arr[-2] != ["10"]
      popped_off << spare_arr[-1].pop
      popped_off << spare_arr[-1].pop
    end

    puts "POPPED_OFF equals #{popped_off}"
    flat_spare_arr = spare_arr.flatten
    puts "THE FLAT_SPARE_ARR IS #{flat_spare_arr}"

    point_arr = []
    
    flat_spare_arr.each_with_index do |str, index|
      if str == "10"
        point_arr.concat(flat_spare_arr[index, 3])
        #p flat_spare_arr[index, 3]
      elsif str.include?("s")
        point_arr.concat(flat_spare_arr[index, 2])
      else
        point_arr << str
    end   
  end

  puts "POINT_ARR BEFORE ADDING POPPED_OFF: #{point_arr}"
  if popped_off.length > 0
    unpopped_arr = point_arr + popped_off
  else
    unpopped_arr = point_arr
  end

  puts "POINT_ARR AFTER ADDING POPPED_OFF: #{unpopped_arr}"
  sless_arr = unpopped_arr.map do |str|
    str.gsub("s","")
  end
  p sless_arr

  p total_points = sless_arr.map {|str| str.to_i}.sum
end
end

# on 1-28 figure out how to score the last frame correctly.  It seems to be working for spares in the 9th frame but not strikes in the 9th frame.
#p bowling_score('11 11 11 11 11 11 11 11 11 11')
#p bowling_score('X X X X X X X X X XXX')
#p bowling_score('X X 9/ 80 X X 90 8/ 7/ 44')
#p bowling_score("62 30 30 26 53 50 81 81 X XXX") #113 pts
#p bowling_score("8/ 20 24 17 40 70 05 81 0/ XX1") #94 pts
#p bowling_score("5/ 4/ 3/ 2/ 1/ 0/ X 9/ 4/ 8/8") #150 pts
#p bowling_score("63 30 12 1/ 9/ 80 16 9/ 70 XX1") #112 pts
#p bowling_score("04 5/ X X 03 45 15 03 X XX1") # 129 pts
p bowling_score("00 00 00 00 00 00 00 00 X 0/X") #40 pts
p bowling_score("90 10 63 13 3/ 63 51 41 X 1/X") # 99 pts