require 'matrix'

vectors = [Vector[0, 11], Vector[1, 2], Vector[5, 2]]

distances = []

vectors.each_with_index do |v1, i|
  ((i+1)...vectors.size).each do |j|
    v2 = vectors[j]
    distance = (v2 - v1).magnitude
    distances << { pair: [i+1, j+1], distance: distance }
  end
  p distances
end

# Print distances nicely
distances.each do |entry|
  puts "Distance between vector #{entry[:pair][0]} and #{entry[:pair][1]}: #{entry[:distance].round(4)}"
end
