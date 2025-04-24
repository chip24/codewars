# My code was ranked 9 out of 186.  I submitted is_nice2? after I asked Copilot to shorted is_nice?. I then submitted is_nice? and it became 9th and is_nice2? became 10th. 

def is_nice?(arr)
  return false if arr.size == 0
  val_arr = []
  arr.each do |int| 
    
    if arr.include?(int-1) || arr.include?(int + 1)
      val_arr << int
    end
  end
  val_arr.size == arr.size 
end

#p is_nice?([])

def is_nice2?(arr)
  return false if arr.empty?
  arr.all? {| int| arr.include?(int - 1) || arr.include?(int + 1)}
end

p is_nice2?([0, 2, 19, 4, 4])
p is_nice2?([3, 2, 1, 0])
p is_nice2?([3, 2, 10, 4, 1, 6])
p is_nice2?([1, 1, 8, 3, 1, 1])
p is_nice2?([0, 1, 2, 3])
p is_nice2?([1, 2, 3, 4])
p is_nice2?([0, -1, 1])
p is_nice2?([0, 2, 3])
p is_nice2?([0])
p is_nice2?([])
p is_nice2?([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
p is_nice2?([0, 1, 3, -2, 5, 4])
p is_nice2?([0, -1, -2, -3, -4])
p is_nice2?([1, -1, 3])
p is_nice2?([1, -1, 2, -2, 3, -3, 6])
p is_nice2?([2, 2, 3, 3, 3])
p is_nice2?([1, 1, 1, 2, 1, 1])