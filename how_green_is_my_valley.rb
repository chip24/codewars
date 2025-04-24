# I wrote make_valley by myself but found it too long.  I asked Copilot to help me shorten it, but the code it suggested wasn't correct. However, I used some of Copilot's ideas and I fixed make_valley2 myself. Make_valley2 was ranked 11 out of 174.  I submitted make_valley second, anf it became ranked 11 and make_valley2 was moved down to 12. 

def make_valley(arr)
  valley_arr = []
  p "The aray has #{arr.length} items."
  sorted_arr = arr.sort
  if arr.size.odd?
    sorted_arr.each_with_index do |int, idx|
      if idx == 0 
        valley_arr << int 
      elsif idx.odd?
        valley_arr.insert(-1,int)
      else
        valley_arr.insert(0, int)
      end
    end
  else
    #p "This array has an even number of items"
    sorted_arr.each_with_index do |int, idx|
      if idx == 0 
        valley_arr << int 
      elsif idx.odd?
        valley_arr.insert(0, int)
      else
        valley_arr.insert(-1,int)
      end
    end
  end

  valley_arr

end

p make_valley([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1])
p make_valley([20, 7, 6, 2])# doesn't work
p make_valley([14, 10, 8])
p make_valley([20, 18, 17, 13, 12, 12, 10, 9, 4, 2, 2, 1, 1])
p make_valley([20, 16, 14, 10, 1])
p make_valley([19, 19, 18, 14, 12, 11, 9, 7, 4])
p make_valley([20, 18, 16, 15, 14, 14, 13, 13, 10, 9, 4, 4, 4, 1])
p make_valley([20, 20, 16, 14, 12, 12, 11, 10, 3, 2])
p make_valley([19, 17, 16, 15, 13, 8, 5, 5, 4, 4, 4])
p make_valley([19, 8, 6])

# I think the method isn't working for arrays with an even number of values. Check on 4-14-2025.

def make_valley2(arr)
  sorted_arr = arr.sort
  valley_arr = []

  sorted_arr.each_with_index do |int, idx| 
    idx.even? ? valley_arr.unshift(int) : valley_arr.push(int)
  end
  arr.size.odd? ? valley_arr : valley_arr.reverse
end

p make_valley2([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1])
p make_valley2([20, 7, 6, 2])# doesn't work
p make_valley2([14, 10, 8])
p make_valley2([20, 18, 17, 13, 12, 12, 10, 9, 4, 2, 2, 1, 1])
p make_valley2([20, 16, 14, 10, 1])
p make_valley2([19, 19, 18, 14, 12, 11, 9, 7, 4])
p make_valley2([20, 18, 16, 15, 14, 14, 13, 13, 10, 9, 4, 4, 4, 1])
p make_valley2([20, 20, 16, 14, 12, 12, 11, 10, 3, 2])
p make_valley2([19, 17, 16, 15, 13, 8, 5, 5, 4, 4, 4])
p make_valley2([19, 8, 6])

