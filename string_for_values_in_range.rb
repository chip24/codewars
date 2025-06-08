# My code was ranked 12 out of 549.  I didn't need any help.

def list_in_range(hash, range)
  arr = []
  p sorted_hash = hash.sort_by {|k, v| v}

  sorted_hash.each do |k,v| 
    if range.include?(v)
      arr << "#{k} (#{v})"
    end
  end
  p arr
  arr.join(", ")
end

PEOPLE = {"Dave"=>55, "Harley"=>18, "Sarah"=>23, "Adam"=>23, "Sue"=>41, "Marshall"=>3, "Ryan"=>21, "Paul"=>33, "Fred"=>71, "John"=>52}

p list_in_range(PEOPLE, (18..25))

#on 4-27 figure out how to sort by value