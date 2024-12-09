class PokerHand
  @@card_order = ["A","2","3","4","5","6","7","8","9","T","J","Q","K","A"]

  @@card_rank = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]

  @@royals_and_suits = ["T","J","Q","K","A","D","S","C","H"]

  @@suits = ["C","D","H","S"]

  attr_accessor :hand, :points

  def initialize(hand)
    @hand_hash = hand.gsub(/\s+/,"").chars.tally.sort.to_h
    @points = 0 
  end

  def royal_flush
    if @hand_hash.values.include?(5) && @hand_hash.keys.all? {|key| @@royals_and_suits.include?(key)}
      p "This is a royal flush!"
      @points += 10
    end
  end

  def straight_flush
    hash_keys = @hand_hash.keys & @@card_order
      if @hand_hash.values.include?(5) && hash_keys.length >= 5
        puts "The hash keys are #{hash_keys}"
        indices = hash_keys.map {|key| @@card_order.index(key)}.sort.uniq
      puts "The indices are #{indices}"
      indices.each_cons(5).any? {|seq| seq.each_cons(2).all? {|a,b| b == a + 1}} 
      p "This is a straight flush!"
      @points += 9
      end
    end

  def four_of_a_kind
    if @hand_hash.values.include?(4)
      key_for_4 = @hand_hash.key(4) 
      #&& @@card_order.include?(key)
      if @@card_order.include?(key_for_4)
      puts "The key_for_4 is #{key_for_4}"
      puts "This is 4 of a kind"
      @points += 8
    end
    end
  end

  def full_house
    card_values = @hand_hash.select {|key, _| @@card_order.include?(key)}
      puts "The card values are #{card_values}"
      counts = card_values.values
      puts "The sorted counts are #{counts.sort}"
      if counts.sort == [2,3]
      puts "This is a full house."
      @points += 7
    end
  end

  def flush
    card_suits = @hand_hash.select {|key,_| @@suits.include?(key)}

    if card_suits.values == [5]
      puts "This is a flush"
      @points += 6
    end
  end

  def straight
    #hash_keys = @hand_hash.keys & @@card_order
    #puts "The hash keys are #{hash_keys}"
    hash_keys = @hand_hash.keys & @@card_order
      if hash_keys.length >= 5
        puts "The hash keys are #{hash_keys}"
        indices = hash_keys.map {|key| @@card_order.index(key)}.sort.uniq
      puts "The indices are #{indices}"
      indices.each_cons(5).any? {|seq| seq.each_cons(2).all? {|a,b| b == a + 1}} 
      p "This is a straight!"
      @points += 5
      end
  end

  def three_of_a_kind
    if @hand_hash.values.include?(3)
      key_for_3 = @hand_hash.key(3) 
      #&& @@card_order.include?(key)
      if @@card_order.include?(key_for_3)
      puts "The key_for_3 is #{key_for_3}"
      puts "This is 3 of a kind"
      @points += 4
    end
    end
  end

  def two_pairs
    if @hand_hash.values.include?(2)
      keys_for_2 = @hand_hash.select {|k,v| v == 2}.keys
      puts "The keys for two are #{keys_for_2}"
      keys_minus_suits = keys_for_2 - @@suits
      if keys_minus_suits.length == 2
        puts "There are two pairs"
        @points += 3
      end
    end
  end

  def one_pair
    if @hand_hash.values.include?(2)
      keys_for_2 = @hand_hash.select {|k,v| v == 2}.keys
      puts "The keys for two are #{keys_for_2}"
      keys_minus_suits = keys_for_2 - @@suits
      puts "The keys minus suits are #{keys_minus_suits}"
      if keys_minus_suits.length == 1
        puts "There is one pair"
        @points += 2
      end
    end
  end

  def high_card
    cards = @hand_hash.keys & @@card_rank
    highest_card = cards.max_by {|card| @@card_rank.index(card)}
    highest_card
  end

  def high_card_compare(other)

    my_high_card = high_card
    opponent_high_card = other.high_card

    my_rank = @@card_rank.index(my_high_card)
    opponent_rank = @@card_rank.index(opponent_high_card)
    if my_rank > opponent_rank
      @points += 1
    elsif opponent_rank > my_rank
      other.points += 1
    else
      puts "It's a tie with the high card"
    end

  end
  def compare_with(other)
    scoring_methods = [:royal_flush, :straight_flush, :four_of_a_kind, :full_house, :flush, :straight,:three_of_a_kind, :two_pairs, :one_pair]

    scoring_methods.each do |method|
      puts "Calling method: #{method}" 
      self_result = send(method)
      puts "Calling method: #{method}"
      other_result = other.send(method)

      break if @points > 0 || other.points > 0
        
      end
      high_card_compare(other) if @points == other.points
      
  end


end

# on 12-4 figure out how to fix the compare_with method. I think the high_card_compare should be in an elsif or else statement. And I need to afdd other conditional statements to return "win","lose", or "draw"

#player_1 = PokerHand.new("2H 3H 4H 5H 6H")
#p player_1.scoring
#p player_1

player_2 = PokerHand.new("TD JD QD KD AD")
p player_2.royal_flush
#p player_2

player_3 = PokerHand.new("2S 3S 4S 5S 6S")
p player_3.straight_flush
#p player_3

player_4 = PokerHand.new("2H 2D 2S 2C AH")
p player_4.four_of_a_kind
#p player_4

player_5 = PokerHand.new("3H 3D 4S 4C 4H")
p player_5.full_house
#p player_5

player_6 = PokerHand.new("AC 2C 6C 8C KC")
p player_6.flush
#p player_6

player_7 = PokerHand.new("AC 2H 3D 4C 5S")
p player_7.straight
p player_7.straight_flush
#p player_7

player_8 = PokerHand.new("4D 4H 4C KD 3H")
p player_8.three_of_a_kind

player_9 = PokerHand.new("5D 5H 8C 8S 9H")
p player_9
player_9.two_pairs

player_10 = PokerHand.new("7H 7D 2S 9C 3H")
p player_10.one_pair

player_11 = PokerHand.new("3D 4H 5D 6S KD")
#p player_11.high_card_compare(opponent)


opponent = PokerHand.new("3D 4H 5D 6S JC")
p opponent.high_card_compare(player_11)
p player_11.points
p opponent.points

p player_4.compare_with(player_2)
p player_4.points
p player_2.points





