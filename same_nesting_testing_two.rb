class Array

  def same_structure_as(arr_two)
    
    # on 7-6 find out why arr_two is creating the same hash as self 
    def arr_to_hash(arr, hash)
      self.each_with_index do |item, idx|
        #puts item.class
        if item.class == Array
          hash[idx] = item.length
        else
          #self_hash.store(:arr + idx, item.length)
          hash[idx] = item.class
        end
      end
    end
    p self
    arr_to_hash(self, self_hash = {})
    p arr_two
    arr_to_hash(arr_two, hash_two = {})
    

  p self_hash
  p hash_two
  #if self_hash == hash_two
  #  puts "true"
  #else
  #  puts "false"
  #end
end
end
#[1, 1, 1].same_structure_as ([1,1])
#[ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
#[ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
#[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )
#[[[], []]].same_structure_as([[1, 1]])
#[].same_structure_as(1)
#[1, "[", "]"].same_structure_as(["[", "]", 1])


