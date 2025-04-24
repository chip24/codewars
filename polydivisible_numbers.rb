# My code was ranked 5 out of 52.  I didn't need to Google anything.

def polydivisible?(n)
  p num_arr = n.digits.reverse
  val_arr = []
  num_arr.each_with_index do |num, idx|
    p num_arr[0..idx].join.to_i
    if num_arr[0..idx].join.to_i % (idx+1) == 0 
      val_arr << num
    end
  end 
  val_arr.length == num_arr.length
end

p polydivisible?(81352)