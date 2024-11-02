#I submitted this code to CodeWars.  I got Copilot to refactor the original code to make it faster, which it did by limiting the max divisor to the square roor of n.  Th Copilot code still had a mistake, which I fixed myself. My solution was very similar to the top ones on CodeWars.

def find_solutions(n)
  solutions = []
  max_divisor = Math.sqrt(n).to_i

  (1..max_divisor).each do |a|
    if n % a == 0
      b = n / a
      if (a + b).even? && (b - a) % 4 == 0
        x = (a + b) / 2
        y = (b - a) / 4
        solutions << [x, y] if x >= 0 && y >= 0
      end
    end
  end

  solutions
end

p find_solutions(90000004)