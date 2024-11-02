# The code below works for single arrays
def flap_display(lines, rotors)
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ?!@#&()|<>.:=-+*/0123456789".chars.to_a
  ascii_arr = lines[0].chars.map {|char| alphabet.index(char)}
  rotors[0].each_with_index do |val, idx|
    ascii_arr[idx..-1] = ascii_arr[idx..-1].map {|x| x+ val}.map {|int| int % alphabet.length}
  end
  #The code below only works if there is one line/array in the arrays. I submitted code from airport_departures_practice.rb
  new_arr = []
  ascii_arr.each do |int|
    new_arr << alphabet[int]
  end
  [new_arr.join]
end

p flap_display(["HELLO "],[[15, 49, 50, 48, 43, 13]])
p flap_display(["CAT"],[[1, 13, 27]])
p flap_display(["CODE"],[[20,20,28,0]])
p flap_display([
    "+---------------------------+",
    "| THIS IS A MULTI LINE TEST |",
    "+---------------------------+"],[
      [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53],
      [8, 46, 7, 12, 30, 1, 4, 16, 34, 52, 32, 13, 11, 48, 3, 14, 4, 24, 16, 13, 3, 47, 22, 26, 50, 13, 52, 47, 8]])

