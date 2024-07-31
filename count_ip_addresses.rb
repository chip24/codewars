def ipsBetween(start,ending)
  #start_arr = start.split(".").map(&:to_i)
  #ending_arr = ending.split(".").map(&:to_i)
  start_arr = start.split('.').inject(0) {|total, value| (total << 8) + value.to_i}
  ending_arr = ending.split('.').inject(0) {|total, value| (total << 8) + value.to_i}

  p start_arr
  p ending_arr
  subtracted_arr = ending_arr - start_arr
  p subtracted_arr
end

ipsBetween("10.0.0.0", "10.0.0.50")
ipsBetween("10.0.0.0", "10.0.1.0")
ipsBetween("20.0.0.10", "20.0.1.0")