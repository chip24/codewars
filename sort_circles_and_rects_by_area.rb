# My code was ranked 9 out of 117.

def sort_by_area(a)
  ordered_hash = {}
  a.each do |sub_arr| 
    if sub_arr.is_a?(Integer) || sub_arr.is_a?(Float)
      ordered_hash[sub_arr] = sub_arr **2 * 3.14 
    else
      ordered_hash[sub_arr] = sub_arr[0] * sub_arr[1] 
    end
  end
  ordered_hash.sort_by {|k, v| v}.map {|pair| pair.first}
end

p sort_by_area([[4.23, 6.43], 1.23, 3.444, [1.342, 3.212]])
p sort_by_area([1.23])
p sort_by_area([[2, 5], 6])
p sort_by_area([])