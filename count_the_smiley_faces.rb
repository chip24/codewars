def count_smileys(arr)
  smileys = 0
  arr.each do |ele|
    #puts ele.length
    if ele.length == 2
      if ele.chars[0] == ":" || ele.chars[0] == ";" and ele.chars[1] == ")" || ele.chars[1] == "D"
        #puts ele.chars[0] + ele.chars[1]
        smileys += 1
      end
    elsif ele.length == 3
      if ele.chars[0] == ":" || ele.chars[0] == ";" and ele.chars[1] == "-" || ele.chars[1] == "~" and ele.chars[2] == ")" || ele.chars[2] == "D" 
        #puts ele
        smileys += 1
      end
    end
  end
  #puts "The number of smileys is #{smileys}"
  smileys
end

count_smileys([':)', ';(', ';}', ':-D'])
count_smileys([';D', ':-(', ':-)', ';~)'])
count_smileys([';]', ':[', ';*', ':$', ';-D'])
