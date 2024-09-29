#It took a lot of time and consulting Copilot and ChatGPT to get the right answer.  There were not too many other solutions in CodeWars.  A few of my original solutions worked, but they were very slow.

def pythagorean_triplet(n)
  max_a = Math.sqrt(n).to_i
  (1..max_a).each do |a|
    (a..max_a).each do |b|
      c = Math.sqrt(a**2 + b**2)
      next unless c % 1 == 0 # Skip if c is not an integer
      c = c.to_i
      return [a, b, c] if a * b * c == n
    end
  end
  nil
end


p pythagorean_triplet(60)
p pythagorean_triplet(780)
p pythagorean_triplet(2040)
p pythagorean_triplet(22)
p pythagorean_triplet(43740)
p pythagorean_triplet(7687680)
p pythagorean_triplet(328860)




