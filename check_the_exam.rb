# My code was ranked 19 out of 861.  I needed no help.

def check_exam(arr1, arr2)
  points = 0
  arr1.each_with_index do |ans, i| 
      if ans == arr2[i]
        #p "ans is #{ans} and choice is #{choice}"
        points += 4 
      elsif arr2[i] == ""
        points += 0 
      else
        points -= 1 
      end
  end
  points < 0 ? 0 : points
end

p check_exam(["a", "a", "b", "b"],["a", "c", "b", "d"])
p check_exam(["a", "a", "c", "b"],["a", "a", "b", "" ] )
p check_exam(["a", "a", "b", "c"],["a", "a", "b", "c"] )
p check_exam(["b", "c", "b", "a"],["" , "a", "a", "c"] )