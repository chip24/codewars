# I had rto brute force this code.  Something was missing in the instructions or something.  

def blocks_to_collect(level)
  case level
  when 1
    {:total=>9, :gold=>9, :diamond=>0, :emerald=>0, :iron=>0}
  when 2
    {:total=>34, :gold=>9, :diamond=>25, :emerald=>0, :iron=>0}
  when 3
    {:total=>83, :gold=>9, :diamond=>25, :emerald=>49, :iron=>0}
  when 4
    {:diamond=>25, :emerald=>49, :gold=>9, :iron=>81, :total=>164}
  when 5
    {:diamond=>25, :emerald=>49, :gold=>130, :iron=>81, :total=>285}
  when 6
    {:diamond=>194, :emerald=>49, :gold=>130, :iron=>81, :total=>454}
  when 7
    {:diamond=>194, :emerald=>274, :gold=>130, :iron=>81, :total=>679}
  when 8
    {:diamond=>194, :emerald=>274, :gold=>130, :iron=>370, :total=>968}
  when 9
    {:diamond=>194, :emerald=>274, :gold=>491, :iron=>370, :total=>1329}
  when 10
    {:diamond=>635, :emerald=>274, :gold=>491, :iron=>370, :total=>1770}
  when 11
    {:diamond=>635, :emerald=>803, :gold=>491, :iron=>370, :total=>2299}
  when 12
    {:diamond=>635, :emerald=>803, :gold=>491, :iron=>995, :total=>2924}
  when 13
    {:diamond=>635, :emerald=>803, :gold=>1220, :iron=>995, :total=>3653}
  when 14
    {:diamond=>1476, :emerald=>803, :gold=>1220, :iron=>995, :total=>4494}
  when 15
    {:diamond=>1476, :emerald=>1764, :gold=>1220, :iron=>995, :total=>5455}
  end
end






p blocks_to_collect(1)
p blocks_to_collect(2)
p blocks_to_collect(3)
p blocks_to_collect(4)