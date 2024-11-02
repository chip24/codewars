def tally_cards(cards)
  cards.map {|card| card.gsub(/[JQK]/, "10")}
       .map {|card| card.to_i}.inject(:+)
end

def score_hand(cards)
  if cards.include?("A")
    puts "Cards includes an ACE."
    p ace_low = cards.map {|card| card.gsub(/[A]/, "1")}
    p ace_high = cards.map {|card| card.gsub(/[A]/, "11")}  
    p ace_low_tally = tally_cards(ace_low)
    p ace_high_tally = tally_cards(ace_high)
    ace_high_tally <= 21 ? ace_high_tally: ace_low_tally

  else
    tally_cards(cards)
  end
end

#p score_hand(['2','3','10','A'])
#p score_hand(['2','3','Q'])
p score_hand(["A", "2", "A", "9", "9"])