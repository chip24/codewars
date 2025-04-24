# I submitted vowel_2_index2 and it was ranked 27 out of 347. A very similar code which only differed in "map.with_index" and "each_with_index.map" was ranked 3rd, but I did a benchmark test on both codes, and they ran in about the same time.

require 'benchmark'

def vowel_2_index(string)
  string.chars.map.with_index do |char, idx|
    if char =~ /[aeiou]/i
      char = idx + 1
    else
      char
    end
  end.join

end

#p vowel_2_index('this is my string')

def vowel_2_index2(string)
  string.chars.map.with_index {|char, idx| char =~ /[aeiou]/i ? char = idx + 1: char}.join
end

result = Benchmark.measure {
  10000.times {vowel_2_index2('this is my string')}
  }

puts "Real time: #{result.real}"
puts "User time: #{result.utime}"
puts "System time: #{result.stime}"