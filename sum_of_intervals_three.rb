def ranges_overlap?(a, b)
  a.include?(b.begin) || b.include?(a.begin)
end

def merge_ranges(a, b)
  [a.begin, b.begin].min..[a.end, b.end].max
end

def merge_overlapping_ranges(overlapping_ranges)
  overlapping_ranges.sort_by(&:begin).inject([]) do |ranges, range|
    if !ranges.empty? && ranges_overlap?(ranges.last, range)
      ranges[0...-1] + [merge_ranges(ranges.last, range)]
    else
      ranges + [range]
    end
  end
end

def intervals_to_ranges(intervals)
  ranges = []
  intervals.each do |arr|
    ranges << Range::new(arr[0],arr[1])
  end
  #p ranges
  ranges
end

def sum_of_intervals(intervals)
  ranges_from_intervals = intervals_to_ranges(intervals)
  merged_ranges = merge_overlapping_ranges(ranges_from_intervals)
  interval_length_array = []
  merged_ranges.each do |range|
    interval_length_array << range.last - range.first
  end
  #p interval_length_array
  interval_length_array.sum
end
# on 7-27 figure out how to call sum_overlapping ranges on the output of merge_overlapping_ranges
ranges = [1..5, 20..20, 4..11, 40..45, 39..50]
#sum_of_intervals(ranges)
sum_of_intervals([[1,5]])
sum_of_intervals([[1,5],[6,10]])
sum_of_intervals([[1,5],[1,5]])
sum_of_intervals([[1,4],[7,10],[3,5]])


