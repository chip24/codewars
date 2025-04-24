# My code worked, but I think it was ranked relatively lowly even though 2 other people had the same code.

class String 
  def letter?
    !!(self =~ /\A[A-Za-z]\z/) 
  end


end

p "f".letter?
p "1".letter?
p "a\n".letter?

