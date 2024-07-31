def self.merge_ranges(intervals)
  ranges = []
  intervals.each do |arr|
    ranges << Range::new(arr[0],arr[1])
  end
  ranges = ranges.sort_by {|r| r.first }
  *outages = ranges.shift
  ranges.each do |r|
    lastr = outages[-1]
    if lastr.last >= r.first - 1
      outages[-1] = lastr.first..[r.last, lastr.last].max
    else
      outages.push(r)
    end
  end
  p "These are the outages #{outages}"
  interval_length_array = []
  outages.each do |range|
    interval_length_array << range.last - range.first
  end
  p interval_length_array
  puts interval_length_array.sum



end

# on 7-26 implement one of the solutions in the Stackoverflow page I saved to Bookmarks 

#ranges = [1..5, 20..20, 4..11, 40..45, 39..50]
#merge_ranges(ranges)
merge_ranges([[1,5]])
merge_ranges([[1,5],[6,10]])
merge_ranges([[1,5],[1,5]])
merge_ranges([[1,4],[7,10],[3,5]])