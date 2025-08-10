# My code was ranked 13 out of 1867 after I upvoted it.  I didn't need to Google anything

class Array
  def contains_all?(other_array)
    (other_array - self).empty? ? true : false
  end
end

# on 8-7 find a new kata and start on page 279 of LERTBD - try too find out how to run/require a locally hosted gem

arr = [1,2,3,4,5]
p arr.contains_all?([1,2,3,4,5])# true)
p arr.contains_all?([12,15])# false)
p arr.contains_all?([9,2,5,4,10])# false)