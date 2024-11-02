# The top CodeWars answer was similar to mine.

=begin
SCORE_MAP = {
  1 => [0, 100, 200, 1000, 1100, 1200, 2000],
  2 => [0, 0, 0, 200, 200, 200, 400],
  3 => [0, 0, 0, 300, 300, 300, 600],
  4 => [0, 0, 0, 400, 400, 400, 800],
  5 => [0, 50, 100, 500, 550, 600, 1000],
  6 => [0, 0, 0, 600, 600, 600, 1200]
}

def score( dice )
  (1..6).inject(0) do |score, die|
    score += SCORE_MAP[die][dice.count(die)]
  end
end
=end

def score(dice)
  score = 0
  dice_hash = dice.tally
  #p dice_hash
  
  score_map = {
    1 => { 5 => 1200, 4 => 1100, 3 => 1000, 2 => 200, 1 => 100 },
    2 => { 5 => 200, 4 => 200, 3 => 200 },
    3 => { 5 => 300, 4 => 300, 3 => 300 },
    4 => { 5 => 400, 4 => 400, 3 => 400 },
    5 => { 5 => 600, 4 => 550, 3 => 500, 2 => 100, 1 => 50 },
    6 => { 5 => 600, 4 => 600, 3 => 600}
  }
  dice_hash.each do |key,count|
   if score_map[key] && score_map[key][count]
    score += score_map[key][count]
  end
end
  score
end

p score([2, 3, 4, 6, 2])
p score([1, 1, 1, 2 ,2])
p score([1, 1, 2, 2 ,2])
p score([5, 1, 3, 4, 1])
p score([1, 1, 1, 3 ,1])
p score([2, 4, 4, 5 ,4])


=begin
if dice_hash[1] == 4
      score += 1100
    end
    if dice_hash[1] == 3
      score += 1000
    end
    if dice_hash[1] == 2
      score += 200
    end
    if dice_hash[1] == 1
      score += 100
    end
    if dice_hash[2] == 3
      score += 200
    end
=end