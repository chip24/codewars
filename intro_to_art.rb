# This code was a PITA and mine ranked 5 out of 38. I had to Google how to get rid of the consecutive duplicates in the pos_arr and how to transpose the star_arr to flip the rows and columns.

def get_w(height)
  return [] if height < 2
  
  rev_arr = (0..height-1).to_a.reverse
  num_arr = (0..height-1).to_a
  pos_arr = (rev_arr + num_arr + rev_arr + num_arr).each_with_object([]) do |val, new_arr|
    new_arr << val unless new_arr.last == val
  end
  star_arr = []
  
  pos_arr.each do |int|
    str = " " * height
    str[int] = "*"
    star_arr << str
  end

  (0...star_arr[0].size).map do |col|
    star_arr.map { |row| row[col] }.join
  end.reverse
end

# on 6-29 find out how to reverse the array to make it horizontal

#p get_w(-5)
#p get_w(1)
#p get_w(3)
#p get_w(4) 
p get_w(5)
#p get_w(7) 

arr5 = [
  "*       *       *",
  " *     * *     * ",
  "  *   *   *   *  ",
  "   * *     * *   ",
  "    *       *    "
]

arr3 = [
  "*   *   *",
  " * * * * ",
  "  *   *  "
]

arr4 = [
    "*     *     *",
    " *   * *   * ",
    "  * *   * *  ",
    "   *     *   "
  ]



