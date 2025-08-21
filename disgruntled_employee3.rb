# My first codes timed out when working with a larger number of switches.  I Googled to see if there was an algorithm, and I found that only switches that were perfect squares would be off, so I changed my code to find perfect squares and didn't iterate over each switch anymore.  My code was ranked 4th out of 57 after I upvoted it.

def off(switches)
  squares = [1]

  return [] if switches == 0
  (2..switches).each do |int|
    root = Math.sqrt(int)
    if root == root.to_i
      squares << int
    end
  end
  squares
end

p off(50000)