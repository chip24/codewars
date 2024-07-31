def unique_in_order(iterable)
  puts iterable.class
  if iterable.class == Array
    iterable.chunk {|x| x}.map(&:first)
  else
    arr_from_string = iterable.chars
    arr_from_string.chunk {|x| x}.map(&:first)
  end
end

unique_in_order('AAAABBBCCDAABBB')
unique_in_order('ABBCcAD') 
unique_in_order([1,3,7,6,6,6,6,8,1,3,4,0,9,0,0])
unique_in_order(["and", "and", "be", "ace","Ace", "BE", "Be", "AND", "AND", "And"])
  