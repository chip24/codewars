def pick_peaks(arr)
  p arr
  peaks = []
  pos = []
  
  arr.each_with_index do |int, idx|
    next if idx == 0 || idx == arr.length - 1
    puts "INT is #{int}"
    puts "ARR[IDX-1] is #{arr[idx-1]}"
    puts "ARR[IDX+1] is #{arr[idx+1]}"
    if int > arr[idx - 1] 
      if arr[idx +1] != nil && int > arr[idx + 1]
        peaks << int
        puts "#{int} was added to PEAKS"
        pos << arr[int] + 1
        puts "#{arr[int]+1} was added to POS"
      elsif arr[idx + 1] == int && arr[idx + 2] == int && arr[idx + 3] < int
        peaks << int 
        puts "#{int} was added to PEAKS in PLATEAU"
        pos << arr[int]
         puts "#{arr[int]} was added to POS in PLATEAU"

    end
  end
end
  
  p pos
  p peaks 

  {"pos" => pos, "peaks" => peaks}


end

# on 2-1 figure out how to keep the code from looking for an index past the length of the array.

#p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) #{pos: [3, 7], peaks: [6, 3]} OK
#p pick_peaks([1, 2, 3, 6, 4, 1, 2, 3, 2, 1]) #{"pos"=>[3, 7], "peaks"=>[6, 3]} OK
#p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 2, 2, 1]) #{"pos"=>[3, 7, 10], "peaks"=>[6, 3, 2]}
p pick_peaks([2, 1, 3, 1, 2, 2, 2, 2, 1]) #{"pos"=>[2, 4], "peaks"=>[3, 2]} wrong order
#p pick_peaks([2, 1, 3, 1, 2, 2, 2, 2]) #{"pos"=>[2], "peaks"=>[3]} OK


