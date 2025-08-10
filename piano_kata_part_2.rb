# My code was ranked 4 out of 76.  I didn't need to look anything up.  The top code was just two lines:
#letter = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
# letter[(key_press_count - 1) % 88 % 12]


def which_note(key_press_count)
  notes = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
  p div_by_88 = key_press_count % 88
  div_by_88 == 0 ? "C" : notes[key_press_count % 88 % 12 -1]
end

p which_note(1)# "A")
p which_note(5)# "C#")
p which_note(12)# "G#")
p which_note(42)# "D")
p which_note(88)# "C")
p which_note(89)# "A")
p which_note(92)# "C")
p which_note(100)# "G#")
p which_note(111)# "G")
p which_note(200)# "G#")
p which_note(2017)# "F")
p which_note(8536) #"C"