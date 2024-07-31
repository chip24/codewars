class Array

  def same_structure_as(arr_two)
    #puts "self.length is #{self.length}"
    #puts "arr_two length is #{arr_two.length}"
    #if self.length != arr_two.length
    #  puts "false"
    #else
    #  puts "true"
    #end
    
    if self.class != arr_two.class
      puts "This is false!!!"
    else  
    # on 7-5 figure out how to deal with empty arrays and arrays with parenthese around it
    self_hash = {}
    self.each_with_index do |item, idx|
      #puts item.class
      if item.class == Array
        self_hash[idx] = item.flatten(1).count
      else
        #self_hash.store(:arr + idx, item.length)
        self_hash[idx] = item.class
      end
    end

    hash_two = {}
    arr_two.each_with_index do |item, idx|
      puts item.class
      if item.class == Array
        hash_two[idx] = item.flatten(1).count
      else
        #self_hash.store(:arr + idx, item.length)
        hash_two[idx] = item.class
      end
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
#[1, 1, 1].same_structure_as ([1,1])
#[ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
#[ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )
#[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
#[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )
#[[[], []]].same_structure_as([[1, 1]])
[].same_structure_as(1)
#[1, "[", "]"].same_structure_as(["[", "]", 1])


#puts [[[], []]].class
#puts [[[], []]].first.size
#puts [[1, 1]].class
#puts [[1, 1]].first.size