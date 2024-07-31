#  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '

#def find_it(seq)
#  seq.each {|int| seq.count(int) % 2 == 0 ? next : int}
#end
# on 7-15 research the tally method to see if it will work
def find_it(seq)
  seq.tally.find {|k,v| v % 2 !=0 }&.first
end

puts find_it([7])
puts find_it([0])
puts find_it([1,1,2])
puts find_it([0,1,0,1,0])
puts find_it([1,2,2,3,3,3,4,3,3,3,2,2,1])
