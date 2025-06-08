# MY code was ranked 4 out of 53.  I didn't need any help.

def trace(matrix)
  sum = 0
  return nil if matrix.flatten.empty?
  matrix.each_with_index do |arr, idx|
    arr.each_with_index do |int, ind|
      if matrix.size != arr.size
        return nil
      elsif idx == ind 
        sum += arr[ind]
        end 
      end  
    end 
  sum

end

p trace([[1,2,3], [4,5,6], [7,8,9]])# 15)
p trace([[0,0], [0,0]])# 0)
p trace([[1]])# 1)
# return nil for empty or invalid matrix
p trace([])#nil)
p trace([[1,2,3], [4,5,6]])# nil)
