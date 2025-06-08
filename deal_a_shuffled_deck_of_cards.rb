# My code was ranked 7 out of 85.  I just Googled to find the existence of the #shuffle method. The top code was one line: (1..13).map { | i | "HCDS".chars.map { | j | "#{j} #{i}" } }.flatten.shuffle 

def shuffled_deck
  suits = ['H', 'C', 'D', 'S']
  values = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']
  deck = []

  suits.each do |suit|
    values.each do |value| 
      deck << suit + " " + value
    end
  end
  deck.shuffle
end

p shuffled_deck

#on June 2nd, watch the rest of Forrest Knight's Git tutorial and figure out the logic of this kata.