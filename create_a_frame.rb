def frame(text, char)
  sorted_text = text.sort_by {|word| word.length}
  box_length = sorted_text[-1].size + 4
  frame_str = ""

  puts char * box_length
  text.each do |str|
    just_length = box_length - str.size - 4
    if just_length == 0
      #p just_length
      puts char + " " + str + " " + char
    else
      #p just_length
      spaces = " " * (just_length + 1)
      puts char + " " + str + spaces + char
    end
  end
  puts char * box_length
  
end

# on 6-13 figure out the rest of the logic

#p frame(['Small', 'frame'], '~')# "~~~~~~~~~\n~ Small ~\n~ frame ~\n~~~~~~~~~")
p frame(['Create','this','kata'], '+')# "++++++++++\n+ Create +\n+ this   +\n+ kata   +\n++++++++++")
#p frame(['This is a very long single frame'], '-')# "------------------------------------\n- This is a very long single frame -\n------------------------------------")