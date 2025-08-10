def intensify_emotions(arr)
  result = []

  arr.chunk_while { |a, b| a == b }.each do |group|
    phrase = group.first
    count = group.size
    

    case phrase
    when "I am furious."
      if count == 1
        result << phrase
      else
        result << "I am " + "really " * (count - 1) + "furious."
      end

    when "You are fired!"
      if count == 1
        result << phrase
      else
        result << "You " + "and you " * (count - 1) + "are fired!"
      end

    else
      result << phrase
    end
  end

  result.join(" ")
end

p intensify_emotions(["FIRE", "FURY", "FIRE", "FIRE", "FIRE", "FIRE"])