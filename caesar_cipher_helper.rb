# My answer was similar to the third answer from the top in CodeWars.  The top answer is below.

=begin
class CaesarCipher
  def initialize(shift)
    @rotate = ('A'..'Z').to_a.rotate(shift).join
  end

  def encode(string)
    string.upcase.tr "A-Z", @rotate
  end
  
  def decode(string)
    string.tr @rotate, "A-Z"
  end
end
=end

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    string
    .upcase
    .chars
    .map {|char| char.ord}
    .map {|int| int >= 65 && int <= 90 ? (int - 65 + @shift)% 26 + 65 : int}
    .map {|int| int.chr}
    .join
  end

  def decode(string)
    string
    .chars
    .map {|char| char.ord}
    .map {|int| int >= 65 && int <= 90 ? (int- 65 - @shift)% 26 + 65 : int}
    .map {|int| int.chr}
    .join
  end
end

c = CaesarCipher.new(5)
p c.encode('Codewars')
p c.decode('BFKKQJX')
p c.encode("IT'S A SHIFT CIPHER!!")
p c.decode("NY'X F XMNKY HNUMJW!!")

