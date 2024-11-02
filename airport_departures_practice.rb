# I submitted the code below to CodeWars. I got some hints from Copilot. Below is the top answer from CodeWars

#def flap_display(lines, rotors)
#  alpha = $ALPHABET.chars
#  lines.zip(rotors).map do |(line, rotor)|
#    line.chars.each_with_index.map do |l, i| 
#      alpha[(alpha.index(l) + rotor[0..i].reduce(:+)) % alpha.count]
#    end.join
#  end
#end


def flap_display(lines, rotors)
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ?!@#&()|<>.:=-+*/0123456789".chars.to_a

  # Ensure that each line has a corresponding rotor
  lines.each_with_index.map do |line, line_idx|
    # Fetch the corresponding rotor, or use an empty array if none exists
    rotor = rotors[line_idx] || []

    ascii_arr = line.chars.map { |char| alphabet.index(char) }

    rotor.each_with_index do |val, idx|
      ascii_arr[idx..-1] = ascii_arr[idx..-1].map { |x| (x + val) % alphabet.length }
    end

    new_arr = ascii_arr.map { |int| alphabet[int] }
    new_arr.join
  end
end

# On 10-14, look over the code again to understand it.
p flap_display(["HELLO "],[[15, 49, 50, 48, 43, 13]])
p flap_display(["CAT"],[[1, 13, 27]])
p flap_display(["CODE"],[[20,20,28,0]])
p flap_display([
    "+---------------------------+",
    "| THIS IS A MULTI LINE TEST |",
    "+---------------------------+"],[
      [1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53],
      [8, 46, 7, 12, 30, 1, 4, 16, 34, 52, 32, 13, 11, 48, 3, 14, 4, 24, 16, 13, 3, 47, 22, 26, 50, 13, 52, 47, 8]])



