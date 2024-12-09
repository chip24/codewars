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

  attr_accessor :hand, :points

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

# this flush code doesn't work.  The ones in ranking_poker_hands and ranking_poker_hands_2 seem to be correct
  def flush
    card_suits = @hand_hash.select { |key, _| @@suits.include?(key) }
    if card_suits.values.sum == 5
      puts "This is a flush"
      @points += 6
    end
  end

  def straight
    hash_keys = @hand_hash.keys & @@card_order
    if hash_keys.length >= 5
      indices = hash_keys.map { |key| @@card_order.index(key) }.sort
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
    my_high_card = high_card
    opponent_high_card = other.high_card

    my_rank = @@card_rank.index(my_high_card)
    opponent_rank = @@card_rank.index(opponent_high_card)
    if my_rank > opponent_rank
      puts "I win with high card #{my_high_card}"
      @points += 1
    elsif opponent_rank > my_rank
      puts "Opponent wins with high card #{opponent_high_card}"
      other.points += 1
    else
      puts "It's a tie with high card #{my_high_card}"
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

    # Compare hands based on points
    #if @points == 0 && other.points == 0
    if @points == other.points
      high_card_compare(other)
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


# Example usage
player_2 = PokerHand.new("2S 3H 4H 5S 6C")
player_3 = PokerHand.new("AH AC 5H 6H AS")

player_2.compare_with(player_3)
