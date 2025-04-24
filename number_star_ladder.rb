# My code was ranked 3 out of 80.  I didn't need any help at all.

def pattern(n)
  ladder_arr = [] 
  n.times.each do |i|
    #p "i equals #{i}"
    if n == 1
      return "1"
      break
    elsif i == 0
      ladder_arr << "1\n"
    elsif i == n-1
      ladder_arr << "1" + "*" * (i) + "#{i+1}"
    else 
      ladder_arr << "1" + "*" * (i) + "#{i+1}" + "\n"
    end
  end
  ladder_arr.join
end

p pattern(1)

# on 4-11 figure out how to add i + 1 and return the result and how to not put /n after the last term