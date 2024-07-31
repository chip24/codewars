class Array

  def same_structure_as(arr_two)
    if self.class != arr_two.class
      false
    else
    
    self_hash = {}
    self.each_with_index do |item, idx|
      #puts item.class
      if item.class == Array
        self_hash[idx] = item.flatten(1).count
      else
        #self_hash.store(:arr + idx, item.length)
        self_hash[idx] = "int_or_str"
      end
    end

    hash_two = {}
    arr_two.each_with_index do |item, idx|
      if item.class == Array
        hash_two[idx] = item.flatten(1).count
      else
        hash_two[idx] = "int_or_str"
      end
    end
  end
  p self_hash
  p hash_two
  if self.class != arr_two.class
    false
  elsif self_hash == hash_two
    true
  else
    false
  end
end
end
puts [1, 1, 1].same_structure_as ([1,1])
puts [ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
puts [ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )
puts [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
puts [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )
puts [[[], []]].same_structure_as([[1, 1]])
puts [].same_structure_as(1)
puts [1, "[", "]"].same_structure_as(["[", "]", 1])


#puts [[[], []]].class
#puts [[[], []]].first.size
#puts [[1, 1]].class
#puts [[1, 1]].first.size