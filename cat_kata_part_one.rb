# My code was ranked 6 out of 77.  I needed to Google to figure out how to create the cat_hash and find the distance between points using Vectors and #magnitude

require 'matrix'

def peaceful_yard(yard, min_distance)
  cat_count = 0
  cat_hash = {}
  vector_arr = []

  yard.select do |str|
    letters = str.scan(/[A-Z]/).length
    cat_count += letters
  end 

  return true if cat_count <= 1
  
  yard.each_with_index do |row, row_idx|
    row.chars.each_with_index do |cat, col_idx|
      if cat == "M" || cat == "R" || cat == "L"
        cat_hash[cat] = [row_idx, col_idx]
      end
    end
  end
    
  cat_hash.each do |key, val| 
    vector_arr << Vector.elements(val)
  end

  distances = vector_arr.each_cons(2).map do |v1, v2| 
    (v2-v1).magnitude
  end

  dist_one = (vector_arr[1] - vector_arr[0]).magnitude
  distances << dist_one

  if distances.length == 3
    dist_two = (vector_arr[2] - vector_arr[1]).magnitude
    distances << dist_two
  
    dist_three = (vector_arr[2] - vector_arr[0]).magnitude 
    distances << dist_three
  end
    
  if distances.any? {|dist| dist < min_distance}
    return false
  else
    return true
  end






end

# on 7-11 figure out how make dist_three available if there are 3 cats

# on 7-11, page 223 in AWDWR - figure out errors in testing or start Rails Tutorial


p peaceful_yard(["------------",
                          "------------",
                          "-L----------",
                          "------------",
                          "------------",
                          "------------"], 10)#  true
  
p peaceful_yard(["------------",
                      "---M--------",
                      "------------",
                      "------------",
                      "-------R----",
                      "------------"], 6) # false

p peaceful_yard(["-----------L",
                      "--R---------",
                      "------------",
                      "------------",
                      "------------",
                      "--M---------"], 4) # true