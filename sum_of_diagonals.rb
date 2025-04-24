# My code was ranked 29 out of 1,353.  The top answer had just one line:  matrix.map.with_index { |a, i| a[i] }.reduce(:+)

def diagonal_sum(array)
  diagonal_digits = []
  i = 0

  array.each do |sub_arr|
    diagonal_digits << sub_arr[i]
    i += 1
  end

  diagonal_digits.sum
end

p diagonal_sum([[1, 2, 3],[4, 5, 6],[7, 8, 9]])