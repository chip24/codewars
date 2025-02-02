# My code was ranked 7th out of 121.

class Robot
  def initialize()
    @words = ["thank","you","for","teaching","me","i","already","know","do","not","understand","the","word", "input"]
  end

  def learn_word(word)
    if word.scan(/[^a-zA-Z]/).empty? == false || word.length == 0
      "I do not understand the input"
    elsif @words.include?(word.downcase)
      "I already know the word #{word}"
    else
      @words << word.downcase
      "Thank you for teaching me #{word}"
    end
  end
end

vicky = Robot.new
p vicky.learn_word('hello')
p vicky.learn_word('abc')
p vicky.learn_word('123')
p vicky.learn_word('world')
p vicky.learn_word('World')
p vicky.learn_word('')