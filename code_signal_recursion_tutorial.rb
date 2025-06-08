def factorial(n)
  # base case: factorial of 0 is 1
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

#p factorial(5)

def fibonacci(n)
  if n <= 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

#p fibonacci(20)

def flatten(arr)
  flat = []

  arr.each do |elem|
    if elem.class == Array 
      flat = flat + flatten(elem) 
    else
      flat.push(elem)
    end
  end
  flat 
end

a = [[1, [[2, 3], [4, [[5], 6]]]], [7], [8, [[[[9]]]]]]

#p flatten(a)

def sort(arr)
  # This is the base case and will stop the recursion as soon as there is nothing to sort.
  return [] if arr.empty?
  
  pivot = arr.pop
  p "The pivot is #{pivot}"
  smaller_elements = [] 
  
  larger_elements = []
  

  arr.each do |elem| 
    if elem < pivot 
      smaller_elements << elem 
      puts "#{elem} is added to the smaller elements for pivot #{pivot} - #{smaller_elements}"
    else
      larger_elements << elem 
      puts "#{elem} is added to the larger elements for pivot #{pivot} - #{larger_elements}"
    end
  end

  #p "The smaller elements for a pivot of #{pivot} are #{smaller_elements}"
  #p "The larger elements for a pivot of #{pivot} are #{larger_elements}"

  smaller_sorted = sort(smaller_elements)
  p "SMALLER SORTED for a pivot of #{pivot} is #{smaller_sorted}"
  larger_sorted = sort(larger_elements)
  p "LARGER SORTED for a pivot of #{pivot} is #{larger_sorted}"

smaller_sorted + [pivot] + larger_sorted

  #p smaller_elements
  #p larger_elements
end

a = [5,2,9,8,1,6,7,4,3]
b = [8, 5, 2, 1, 9, 6, 3, 0, 7, 4]

p sort(a)

# on 5-30, try to wrap my head around the numbers I wrote yesterday and continue writing the numbers for the rest of the array.


# This is the explanation for array a.  The method takes a pivot of 3 and divides the elements up into the arrays [2,1] (smaller elements) and [5,9,8,6,7,4] (larger elements) which are in the order that they appear in the original array.  Now, smaller_sorted is called with a pivot of 1, since that's the last element on the smaller_elements array. 2 is added to the elements larger than 1 and [] is returned for the smaller_sorted for 1.  Now, 2 becomes the pivot, which returns [] for both the smaller_sorted and the larger_sorted since 2 was the only element at the beginning and now there are none. Next, larger_sorted for a pivot of 1 ([2]) is returned (even though smaller_sorted for a pivot of 1 was returned before smaller_sorted and larger_sorted for a pivot of 2).  Now, smaller_sorted for a pivot of 3 - [1,2] is returned.  
# Next, the pivot becomes 4 since that was at the end of the larger elements array.   All the rest of the elements left are added to the larger elements than 4 array since none are smaller than 4 and the fuction returns [] for smaller_sorted for 4.  The pivot becomes 7 and the smaller elements array becomes [5,6] and the larger elements array becomes [9,8].  Now the pivot is 6 which gives a smaller elements array of [5].  Now the pivot is 5. which returns both a smaller_sorted and larger_sorted of []. Now a pivot of 6 returns a smaller_sorted of [5] and a larger_sorted of []. Now pivot 7 returns a smaller_sorted of [5,6] and the pivot becomes 8.  9 is added to the larger elements array for pivot 8 and the functions returns [] for smaller_sorted of pivot 8.  Now the pivot is 9, and [] is returned for both smaller_sorted and larger_sorted for pivot 9.  Larger_sorted for 8 returns [9].  Larger_sorted for 7 returns [8,9].  Larger_sorted for 4 returns [5,6,7,8,9] and larger_sorted for 3 returns [4,5,6,7,8,9].  Finally, the function returns [1,2] (smaller_sorted for 3) + 3 + [4,5,6,7,8,9] (larger_sorted for 3). 

# Throughout the recursion, the pivot moves like this: 3,1,2,1,3,4,7,6,5,6,7,8,9,8,7,4,3