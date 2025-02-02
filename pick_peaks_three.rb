# My code was ranked 15 out of 662.  I only needed Copilot to help me deal with plateaus. I coded the rest on my own.

def pick_peaks(arr)
  peaks = []
  pos = []
  
  arr.each_with_index do |int, idx|
    next if idx == 0 || idx == arr.length - 1

    if int > arr[idx - 1]
      peak_start = idx
      
      while arr[peak_start] == arr[peak_start + 1]
        peak_start += 1
      end

      if arr[peak_start + 1] != nil && arr[peak_start] > arr[peak_start + 1]
        peaks << int
        pos << idx
      end
    end
  end

  {"pos" => pos, "peaks" => peaks}
end

# Example usage
arr = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 2, 2, 1]
#puts pick_peaks(arr)
#p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) #{pos: [3, 7], peaks: [6, 3]} OK
#p pick_peaks([1, 2, 3, 6, 4, 1, 2, 3, 2, 1]) #{"pos"=>[3, 7], "peaks"=>[6, 3]} OK
#p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 2, 2, 1]) #{"pos"=>[3, 7, 10], "peaks"=>[6, 3, 2]}
#p pick_peaks([2, 1, 3, 1, 2, 2, 2, 2, 1]) #{"pos"=>[2, 4], "peaks"=>[3, 2]} wrong order
p pick_peaks([2, 1, 3, 1, 2, 2, 2, 2]) #{"pos"=>[2], "peaks"=>[3]} OK