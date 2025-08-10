def next_num(n)
  #p digits = n.to_s.chars.map(&:to_i)
  #len = digits.size

  loop do
    n += 1
    str = n.to_s
    valid = true
    # loops from 1 to the length of the string
    (1..str.size).each do |i|
      puts "i is #{i}"
      # sets the prefix to the first digit, then the first two digits, then the first three digits, etc.
      prefix = str[0...i].to_i
      p "The prefix is #{prefix}"
      # divides the prefix by the length of the prefex
      if prefix % i != 0
        valid = false
        break
      end
    end

    return n if valid
  end
end

p next_num(0) # 1)
p next_num(10) # 12)
p next_num(11) # 12)
p next_num(1234) # 1236)
p next_num(123220) # 123252)

