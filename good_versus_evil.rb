# one of the top Codewars answers was similar to mine but a little shorter
=begin
def goodVsEvil(good, evil)
  goodtot = good.split(' ').zip([1,2,3,3,4,10]).map { |a, b| a.to_i * b }.reduce(:+)
  eviltot = evil.split(' ').zip([1,2,2,2,3,5,10]).map { |a, b| a.to_i * b }.reduce(:+)
  if goodtot > eviltot
    "Battle Result: Good triumphs over Evil" 
  elsif eviltot > goodtot
    "Battle Result: Evil eradicates all trace of Good" 
  else
    "Battle Result: No victor on this battle field"
  end
end
=end


def good_vs_evil(good, evil)
  
  good_worths = [1,2,3,3,4,10]
  evil_worths = [1,2,2,2,3,5,10]
  good_count_arr = good.split(' ').map {|s| s.to_i}
  evil_count_arr =evil.split(' ').map {|s| s.to_i}
  p good_value = good_count_arr.zip(good_worths).map {|x, y| x * y}.sum
  p evil_value = evil_count_arr.zip(evil_worths).map {|x, y| x * y}.sum
  if good_value > evil_value
    "Battle Result: Good triumphs over Evil"
  elsif evil_value > good_value
    "Battle Result: Evil eradicates all trace of Good"
  else
    "Battle Result: No victor on this battle field"
  end
end


p good_vs_evil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
p good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
p good_vs_evil("1 1 1 1 1 1","1 0 1 1 1 1 1")

#good_hash = { hobbits: 1, men: 2, elves: 3, dwarves: 3, eagles: 4, wizards: 10 }
#  bad_hash = { orcs: 1, men: 2, wargs: 2, goblins: 2, uruk_hai: 3, trolls: 5, wizards: 10 }
