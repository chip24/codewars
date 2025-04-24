require 'benchmark'

def vowel_2_index(string)
  string.chars.each_with_index.map { |c, i| c =~ /[aeiou]/i ? i + 1 : c }.join
end

result = Benchmark.measure {
  10000.times {vowel_2_index('this is my string')}
  }

puts "Real time: #{result.real}"
puts "User time: #{result.utime}"
puts "System time: #{result.stime}"