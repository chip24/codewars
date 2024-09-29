# Many of the Codewars answers were similar to mine, but the top answer was the simplest.

=begin
def encode(s)
  s.tr("aeiou", "12345")
end

def decode(s)
  s.tr("12345", "aeiou")
end
=end


@ltr_num_hash = {"a" => "1", "e" => "2", "i" => "3", "o" => "4", "u" => "5"}

def encode(s)
  s.chars.map {|char| @ltr_num_hash.has_key?(char)? char = @ltr_num_hash[char] : char }.join
end

def decode(s)
  s.chars.map {|char| @ltr_num_hash.has_value?(char) ? char = @ltr_num_hash.key(char) : char}.join
end

p encode('hello')
p encode('How are you today?')
p encode('This is an encoding test.')

p decode('h2ll4')