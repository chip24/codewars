#My code was ranked 3 of 42.  

def manipulate(n)
  dig_arr = n.to_s.chars
  mid_index = dig_arr.length / 2
  p first_half = dig_arr[0...mid_index]
  second_half = dig_arr[mid_index..-1]
  new_second = second_half.map {|num| num.gsub(/\d/,"0")}
  ((first_half + new_second).join).to_i
end

p manipulate(192827764920)
p manipulate(838473)
p manipulate(8173648710293847)
p manipulate(283749202)
p manipulate(1202)
p manipulate(422)
p manipulate(30000000)