=begin
class Array
  def tally
    each_with_object(Hash.new(0)) { |item, counts| counts[item] += 1 } 
    end 
end
=end


class PokerHand
  @@card_order = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"]
  @@card_rank = ["2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"]
  @@royals_and_suits = ["T", "J", "Q", "K", "A", "D", "S", "C", "H"]
  @@suits = ["C", "D", "H", "S"]

  attr_accessor :hand, :points, :hand_hash

  def initialize(hand)
    @hand_hash = hand.gsub(/\s+/, "").chars.tally
    @points = 0
  end

  def royal_flush
    if @hand_hash.values.include?(5) && @hand_hash.keys.all? { |key| @@royals_and_suits.include?(key) }
      puts "This is a royal flush!"
      @points += 10
    end
  end

  def straight_flush
    hash_keys = @hand_hash.keys & @@card_order
    if @hand_hash.values.include?(5) && hash_keys.length >= 5
      indices = hash_keys.map { |key| @@card_order.index(key) }.sort
      if indices.each_cons(5).any? { |seq| seq.each_cons(2).all? { |a, b| b == a + 1 } }
        puts "This is a straight flush!"
        @points += 9
      end
    end
  end

  def four_of_a_kind
    if @hand_hash.values.include?(4)
      key_for_4 = @hand_hash.key(4)
      if @@card_order.include?(key_for_4)
        puts "This is four of a kind"
        @points += 8
      end
    end
  end

  def full_house
    card_values = @hand_hash.select { |key, _| @@card_order.include?(key) }
    counts = card_values.values
    if counts.sort == [2, 3]
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
    hash_keys = @hand_hash.keys & @@card_order
    puts "hash_keys testing for straight: #{hash_keys}"
    if hash_keys.length >= 5
      puts "There are 5 hash_keys"
      indices = hash_keys.map { |key| @@card_order.index(key) }.sort
      if indices.include?(0)
        indices << 13
      elsif indices.include?(13)
        indices << 0
      end
      puts "The straight indices are #{indices}"
      if indices.each_cons(5).any? { |seq| seq.each_cons(2).all? { |a, b| b == a + 1 } }
        puts "This is a straight!"
        @points += 5
      end
    end
  end

  def three_of_a_kind
    if @hand_hash.values.include?(3)
      key_for_3 = @hand_hash.key(3)
      if @@card_order.include?(key_for_3)
        puts "This is three of a kind"
        @points += 4
      end
    end
  end

  def two_pairs
    pairs = @hand_hash.select { |_, v| v == 2 }.keys - @@suits
    if pairs.length == 2
      puts "This is two pairs"
      @points += 3
    end
  end

  def one_pair
    pairs = @hand_hash.select { |_, v| v == 2 }.keys - @@suits
    if pairs.length == 1
      puts "This is one pair"
      @points += 2
    end
  end

  def high_card
    cards = @hand_hash.keys & @@card_rank
    highest_card = cards.max_by { |card| @@card_rank.index(card) }
    highest_card
  end

  def high_card_compare(other)

      puts "The points are equal"
      p @hand_hash.sort.to_h  
      p other.hand_hash.sort.to_h
      p @hand_hash.slice(*@@card_rank)
      p hand_hash_array = @hand_hash.keys.select {|key| @@card_rank.include?(key)}.sort
      p other_hand_array = other.hand_hash.keys.select {|key| @@card_rank.include?(key)}.sort
      p hha_unique = (hand_hash_array - other_hand_array)
      p oha_unique = (other_hand_array - hand_hash_array)
      p hha_high_card = (hand_hash_array - other_hand_array)[-1]
      p oha_high_card = (other_hand_array - hand_hash_array)[-1]
      p index_hha_hc = @@card_rank.index(hha_high_card)
      p index_oha_hc = @@card_rank.index(oha_high_card)
      if index_hha_hc != nil && index_oha_hc != nil
        if index_hha_hc > index_oha_hc
        puts "hha high card is higher"
        @points += 1
        elsif index_oha_hc > index_hha_hc
        puts "oha high card is higher"
        other.points += 1
      end
    end

  end

  def full_house_tiebreaker(other)
    puts @hand_hash.sort.to_h
    puts other.hand_hash.sort.to_h
    p filtered_hh = @hand_hash.reject {|key,_|["C", "D", "H", "S"].include?(key) }
    p filtered_ohh = other.hand_hash.reject {|key,_|["C", "D", "H", "S"].include?(key) }
    p hh_sum = filtered_hh.map {|key,value| @@card_rank.index(key) * value}.sum
    p ohh_sum = filtered_ohh.map {|key,value| @@card_rank.index(key) * value}.sum
    if hh_sum > ohh_sum
      @points += 1
    elsif ohh_sum > hh_sum
      other.points += 1
    end

  end

  def one_pair_tiebreaker(other)
    puts "ONE_PAIR_TIEBREAKER CALLED!"
    puts "@hand_hash for one_pair_tiebreaker is #{@hand_hash}"
    p filtered_hh = @hand_hash.reject {|key,_|["C", "D", "H", "S"].include?(key) }
    p filtered_ohh = other.hand_hash.reject {|key,_|["C", "D", "H", "S"].include?(key) }
    p hh_pair_card = filtered_hh.select {|k,v| k if v == 2}.keys[0]
    p ohh_pair_card = filtered_ohh.select {|k,v| k if v == 2}.keys[0]
    p hh_pair_rank = @@card_rank.index(hh_pair_card)
    p ohh_pair_rank = @@card_rank.index(ohh_pair_card)
    if hh_pair_rank > ohh_pair_rank
      @points += 1
    elsif ohh_pair_rank > hh_pair_rank
      other.points += 1
    end

  end

  def compare_with(other)
    scoring_methods = [:royal_flush, :straight_flush, :four_of_a_kind, :full_house, :flush, :straight, :three_of_a_kind, :two_pairs, :one_pair]

    # Check each scoring method for both hands
    scoring_methods.each do |method|
      send(method)
      break if @points > 0
    end

    scoring_methods.each do |method|
      other.send(method)
      break if other.points > 0
    end

    if @points == 2 && other.points == 2
      one_pair_tiebreaker(other)
    end

    # Compare hands based on points
    if @points == other.points
      high_card_compare(other)
    
    end

    # Give win to higher of two pairs
    if @points == 7 && other.points == 7
      full_house_tiebreaker(other)
    end


    puts "Final points - You: #{@points}, Opponent: #{other.points}"
    #@points
    if @points > other.points
      puts "Win"
      "Win"
    elsif @points < other.points
      puts "Loss"
      "Loss"
    else
      puts "Tie"
      "Tie"
    end
  end
end

# This is the most accurate code as of 12-7.  Try to get the code to pass the 9 failed tests in Attempt on 12-8.
# Example usage
#player_2 = PokerHand.new("2S 3H 4H 5S 6C")
#player_3 = PokerHand.new("AH AC 5H 6H AS")

#player_2.compare_with(player_3)


player_4 = PokerHand.new('6S AD 7H 4S AS')
player_5 = PokerHand.new('AH AC 5H 6H 7S')

#player_4.compare_with(player_5)

#player_6 = PokerHand.new('2S 3H 4H 5S 6C')
#player_7 = PokerHand.new('AH AC 5H 6H AS')

#player_6.compare_with(player_7)

player_8 = PokerHand.new("KC 4H KS 2H 8D")
player_9 = PokerHand.new("KS 8D 4D 9S 4S")
player_8.compare_with(player_9)
