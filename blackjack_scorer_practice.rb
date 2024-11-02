# I submitted the code below.  My original code in blackjack_scorer.rb worked if there was only one or zero aces.  I used Copilot to refactor to handle more than one ace and got the score_hands code below.  I came up with closest_to_21 mostly on my own.  The top answer is below.

# def score_hand(cards)
#    s = cards.sum{|c| c=='A' ? 1 : /\d+/=~c ? c.to_i : 10 }
#    cards.include?('A') && s<12 ? s+10 : s
#end

def closest_to_21(arr)
  return 21 if arr.include?(21)
  under = arr.select { |n| n < 21 }.max
  over = arr.select { |n| n > 21 }.min
  under || over
end

def score_hands(cards)
  sums = [0]

  cards.each do |card|
    case card
    when "A"
      new_sums = []
      sums.each do |sum|
        new_sums << sum + 1
        new_sums << sum + 11
      end
      sums = new_sums
    when "K", "Q", "J"
      sums = sums.map { |sum| sum + 10 }
    else
      sums = sums.map { |sum| sum + card.to_i }
    end
  end

  closest_to_21(sums)
  
end

# on 10-27 figure out how to return a number under 21 from the sums array unless there is not one
# Example usage
cards = ["A", "2", "A", "9", "9"]
result = blackjack_sums(cards)
puts result.inspect  # Outputs [22, 32, 42]
p blackjack_sums(['7','7','8'])
p blackjack_sums(["A", "Q", "A", "9", "9"])
p blackjack_sums(["A", "Q", "A", "2", "3"])
p blackjack_sums(["J","A","K"])
