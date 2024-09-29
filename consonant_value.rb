# the top CodeWars answer was better than mine.  I need to figure out how to avoid crating arrays of arrays

# def solve(s)
 # s.split(/[aeiou]/).map{|x| x.sum - x.size * 96}.max
#end


def solve(s)
  arr_of_arrs = s
  .tr('aeiou',' ')
  .split(' ')
  .map(&:chars)
  
  arr_of_arrs.map do |sub_arr|
    sub_arr.map do |str|
      str.bytes.map {|b| b- 96}

    end.flatten.inject(&:+)
  end.max
end

p solve("zodiacs")