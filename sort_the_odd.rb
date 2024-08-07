#top answer on CodeWars
#def sort_array(source_array)
#  odds = source_array.select(&:odd?).sort
#  source_array.map { |n| n.even? ? n : odds.shift }
#end


def sort_array(source_array)
  num_hash ={}
  source_array.each_with_index do |num, idx|
    num_hash[idx] = num
  end
  p num_hash
  odd_nums, even_nums = num_hash.partition {|_,v| v.odd?}.map(&:to_h)
  p odd_nums
  p even_nums
  p sorted_odd_keys = odd_nums.keys.sort
  p sorted_odd_values = odd_nums.values.sort
  p sorted_odds = sorted_odd_keys.zip(sorted_odd_values).to_h

  #p even_nums
  p sorted_odds.merge(even_nums).sort_by{|k,v| k}.to_h.values

      
end

sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])

