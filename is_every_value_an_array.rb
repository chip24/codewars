# My code was ranked 8 out of 226. I needed to Google how to determine if an array element is another array and how to use the exclamation point to show that the element is not an array. The top code was one line:  value.all? { |e| e.is_a? Array }.

def arr_check(value)
  value.each do |item| 
    return false if !item.is_a?(Array)
      
  end
  true
end

p arr_check([[1],[2]])# true)
p arr_check(['1','2'])# false)
p arr_check([{1=>1},{2=>2}])# false)
p arr_check([])# true)
p arr_check([['string']])# true)
p arr_check([[], {}])# false)
p arr_check([[1], [2], [3]])# true)
p arr_check(['A', 'R', 'R', 'A', 'Y'])# false)