# This code was suggested by ChatGPT to optimize my original code, but it does not work at all

def pythagorean_triplet(n)
  max_m = Math.sqrt(n).to_i
  (2..max_m).each do |m|
    (1...m).each do |n|
      a = m**2 - n**2
      b = 2 * m * n
      c = m**2 + n**2
      product = a * b * c
      
      # Only consider valid (a, b, c) if product does not exceed n
      next if product > n

      # Check if the product matches n
      return [a, b, c] if product == n
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


