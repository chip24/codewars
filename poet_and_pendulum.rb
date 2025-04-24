# My code was ranked 9 out of 136.  I just Googled the insert method to find the order of the arguments. 


def pendulum(values)
  pend_arr = []
  values.sort.each_with_index do |int, idx|
    if idx == 0
      pend_arr << int
    elsif idx.odd?
      pend_arr.insert(-1, int)
    else
      pend_arr.insert(0, int)
    end
  end
  pend_arr
end

p pendulum([6, 6, 8, 5, 10])
p pendulum([9, 4, 6, 4, 10, 5])