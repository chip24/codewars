# My code was ranked 3 out of 41. I used no help.

def get_score(arr)
  level = 0
  total_lines = 0
  score = 0
  score_hash = { 0 => 0, 1 => 40, 2 => 100, 3 => 300, 4 => 1200}
  
  arr.each do |line|
    total_lines += line
    score += (score_hash[line] * (level + 1))
    if total_lines >= 10 
      level += 1
      total_lines -= 10
    end
  end
  score
end

p get_score([0, 1, 2, 3, 4])
p get_score([0, 1, 1, 3, 0, 2, 1, 2])
p get_score([2, 0, 4, 2, 2, 3, 0, 0, 3, 3])

# on 4-24, figure out how to increment the level for every ten lines.