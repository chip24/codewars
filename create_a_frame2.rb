# My code was ranked 7 out of 92.  I needed to Google to figure out exactly how to use multiplication to create multiple spaces.

def frame(text, char)
  sorted_text = text.sort_by {|word| word.length}
  box_length = sorted_text[-1].size + 4
  frame_str = ""

  frame_str << char * box_length + "\n"
  text.each do |str|
    just_length = box_length - str.size - 4
    if just_length == 0
      #p just_length
      frame_str << char + " " + str + " " + char + "\n"
    else
      #p just_length
      spaces = " " * (just_length + 1)
      frame_str << char + " " + str + spaces + char + "\n"
    end
  end
  frame_str << char * box_length
  frame_str
  
end

# on 6-13 figure out the rest of the logic

#p frame(['Small', 'frame'], '~')# "~~~~~~~~~\n~ Small ~\n~ frame ~\n~~~~~~~~~")
p frame(['Create','this','kata'], '+')# "++++++++++\n+ Create +\n+ this   +\n+ kata   +\n++++++++++")
#p frame(['This is a very long single frame'], '-')# "------------------------------------\n- This is a very long single frame -\n------------------------------------")