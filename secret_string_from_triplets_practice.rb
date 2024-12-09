# There are a variety of answers in CodeWars.  I found a Javasvript version of the code on Github then used Copilot to covert it to Ruby.  This one was pretty confusing.

def recover_secret(triplets)
  duplets = []
  res = ''

  # Convert triplets to duplets
  triplets.each do |trip|
    str = trip.join('')
    d1 = str[0..1]
    d2 = str[1..2]
    duplets << d1 unless duplets.include?(d1)
    duplets << d2 unless duplets.include?(d2)
  end

  nxt = find_next(duplets)
  while nxt
    res += nxt
    duplets.reject! { |d| d.include?(nxt) }
    nxt = find_next(duplets)
  end

  res
end

# Return the first letter of the secret word
def find_next(duplets)
  nxt = duplets.find { |d| duplets.all? { |_d| d[0] != _d[1] } }
  duplets.size > 1 ? nxt[0] : duplets[0]
end

# Example usage
triplets = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]

puts recover_secret(triplets)
