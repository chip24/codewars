#I submitted this code to CodeWars.  The main ideas of it came from StackExchange, but I needed to reverse the output, and I asked CoPilot to help me. I knew how to do it using a loop, but I wanted to avoid that so that I wouldn't need to create a new variable. The logic behind this one is tricky since it requires recursion.  My code ranked 5 out of 92.


def expand(n, max = n)
  return [[]] if n == 0
  1.upto([max, n].min).flat_map do |i|
    expand(n - i, i).map { |rest| [*rest, i] }
  end
end

# Example usage:
p expand(4) # Output: [[1, 1, 1, 1], [1, 1, 2], [2, 2], [1, 3], [4]]



