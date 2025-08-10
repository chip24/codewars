def intensify_emotions(arr)
  result = []

  arr.chunk_while { |a, b| a == b }.each do |group|
    p phrase = group.first
    p count = group.size
    p group
    if phrase == "FIRE" && count == 1
      result << "You are fired!"
    elsif phrase == "FIRE" && count > 1
      result << "You " + "and you " * (count - 1) + "are fired!"
    elsif phrase == "FURY" && count == 1
      result << "I am furious."
    elsif phrase == "FURY" && count > 1
      result << "I am " + "really " * (count - 1) + "furious."
    end
  end
  result.join(" ")
end

p intensify_emotions(["FIRE", "FURY", "FIRE", "FIRE", "FIRE", "FIRE"])