# my solution was almost as short but mych clearer than the top CodeWars solution

def decipher_this(string)
  letter_arrays = string.split(' ').map do |word|
    word.split(/(\D+)/).map.with_index {|word,idx| idx == 0 ? word.to_i.chr : word }.join.chars
  end
  letter_arrays.map do |arr|
    arr[1],arr[-1] = arr[-1],arr[1]
  end
  letter_arrays.map {|arr| arr.join }.join(' ')
end  

p decipher_this('72olle 103doo 100ya')
