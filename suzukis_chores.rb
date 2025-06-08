# My code was ranked 10 out of 66.

def chore_assignment(chores)
  arr = []
  sorted_chores = chores.sort

  until sorted_chores.length == 0 
    p "The zero index value is #{sorted_chores[0]}"
    p "The -1 index value is #{sorted_chores[-1]}"
    arr << sorted_chores[0] + sorted_chores[-1]
    sorted_chores.shift
    sorted_chores.pop
    p sorted_chores 
  end
  arr.sort
end

p chore_assignment([5, 8, 3, 5, 3, 10, 5, 3, 10, 2, 4, 8, 7, 3, 9, 6])
