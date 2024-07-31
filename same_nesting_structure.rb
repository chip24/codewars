class Array

  def same_structure_as(arr_two)
    #puts "self.length is #{self.length}"
    #puts "arr_two length is #{arr_two.length}"
    #if self.length != arr_two.length
    #  puts "false"
    #else
    #  puts "true"
    #end
    
    # on 7-5 figure out how to deal with empty arrays and arrays with parenthese around it
    self_hash = {}
    self.each_with_index do |item, idx|
      #puts item.class
      if item.class == Integer
        self_hash[idx] = item.class
      else
        #self_hash.store(:arr + idx, item.length)
        self_hash[idx] = item.length
      end
    end

    hash_two = {}
    arr_two.each_with_index do |item, idx|
      #puts item.class
      if item.class == Integer
        hash_two[idx] = item.class
      else
        #self_hash.store(:arr + idx, item.length)
        hash_two[idx] = item.length
      end
    end

  p self_hash
  p hash_two
  if self_hash == hash_two
    puts "true"
  else
    puts "false"
  end
end
end
[1, 1, 1].same_structure_as ([1,1])
[ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )
