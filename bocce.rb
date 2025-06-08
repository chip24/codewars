def bocce_score(balls)
  red_distances = []
  black_distances = []
  jacks_a = balls[-1][:distance][0]
  jacks_b = balls[-1][:distance][1]
  red_score = 0
  black_score = 0

  balls.each do |hsh|
    if hsh[:type] == "black" #|| 
      puts "IT'S BLACK!"
      black_distances << [hsh[:distance][0] - jacks_a, hsh[:distance][1] - jacks_b]
    elsif hsh[:type] == "red"
      puts "IT'S RED!"
      red_distances << [hsh[:distance][0] - jacks_a, hsh[:distance][1] - jacks_b]
    end
  end
  p red_distances
  p black_distances

  black_distances.map! do |arr|
    Math.sqrt((arr[0]**2) + (arr[1]**2))
  end

  red_distances.map! do |arr|
    Math.sqrt((arr[0]**2) + (arr[1]**2))
  end

  p red_distances
  p black_distances
  unique_red = (red_distances - black_distances).sort
  unique_black = (black_distances - red_distances).sort 

  puts "Unique red is #{unique_red}"
  puts "Unique black is #{unique_black}"

  return "No points scored" if unique_red.empty?
  return "No points scored" if unique_black == nil

  if unique_red[0] > unique_black[0]
    unique_black.each do |dist|
      if dist < unique_red[0]
        black_score += 1
      end
    end
  elsif unique_red[0] < unique_black[0]
    unique_red.each do |dist|
      if dist < unique_black[0]
        red_score += 1
      end
    end
  end



  p red_score
  p black_score

  if red_score == black_score
    "No points scored"
  elsif red_score > black_score
    "red scores #{red_score}"
  else
    "black scores #{black_score}"
  end
end

# on 6-8 figure out the logic for more than two balls since most scoring is wrong.  Actually, you don't compare each ball, you only count the balls that are less than all of the other teams balls.  This last example should score black 3 since three of the black balls are closer than the closest red ball at 3.0.  Also, keep watching Mosh tutorial on Git.

score = [{:type=>"red", :distance=>[60, 4]}, {:type=>"red", :distance=>[61, 10]}, {:type=>"red", :distance=>[50, -5]}, {:type=>"red", :distance=>[89, 1]}, {:type=>"black", :distance=>[69, 3]}, {:type=>"black", :distance=>[56, 9]}, {:type=>"red", :distance=>[75, -9]}, {:type=>"red", :distance=>[76, 3]}, {:type=>"black", :distance=>[77, -3]}, {:type=>"black", :distance=>[61, -5]}, {:type=>"black", :distance=>[56, -3]}, {:type=>"black", :distance=>[79, -10]}, {:type=>"red", :distance=>[81, -7]}, {:type=>"red", :distance=>[56, -5]}, {:type=>"black", :distance=>[53, -9]}, {:type=>"jack", :distance=>[85, 1]}]

p bocce_score(score)

