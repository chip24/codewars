#my Code was ranked 10 out of 116.  I only Googled to remember the each_slice method.

def total_bill(s)
  total = 0
  r_arr = s.gsub(/\s+/, "").chars.each_slice(5).to_a
  r_arr.each do |arr| 
    if arr.size == 5
      total += 8
    else
      total += arr.size * 2
    end
  end
  total
end

p total_bill("rr rrr rrr")
p total_bill('rr')
p total_bill('rr rrr')
p total_bill('rr rrr rrr rr')
p total_bill('rrrrrrrrrrrrrrrrrr   rr r')
p total_bill('')
