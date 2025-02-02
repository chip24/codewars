class Decoder
  DECRYPTION_TABLE = {
    'a' => 'H', 'b' => 'a', 'c' => 'I', 'd' => 'b', 'e' => 'J', 'f' => 'c',
    'g' => 'K', 'h' => 'd', 'i' => 'L', 'j' => 'e', 'k' => 'M', 'l' => 'f',
    'm' => 'N', 'n' => 'g', 'o' => 'O', 'p' => 'h', 'q' => 'P', 'r' => 'i',
    's' => 'Q', 't' => 'j', 'u' => 'R', 'v' => 'k', 'w' => 'S', 'x' => 'l',
    'y' => 'T', 'z' => 'm', 'A' => 'U', 'B' => 'n', 'C' => 'V', 'D' => 'o',
    'E' => 'W', 'F' => 'p', 'G' => 'X', 'H' => 'q', 'I' => 'Y', 'J' => 'r',
    'K' => 'Z', 'L' => 's', 'M' => '0', 'N' => 't', 'O' => '1', 'P' => 'u',
    'Q' => '2', 'R' => 'v', 'S' => '3', 'T' => 'w', 'U' => '4', 'V' => 'x',
    'W' => '5', 'X' => 'y', 'Y' => '6', 'Z' => 'z', '0' => '7', '1' => 'A',
    '2' => '8', '3' => 'B', '4' => '9', '5' => 'C', '6' => '.', '7' => 'D',
    '8' => ',', '9' => 'E', ' ' => 'G', '.' => '?', ',' => 'F', '?' => ' '
  }

  def self.decode(input)
    message = ''
    cnt = DECRYPTION_TABLE.size

    input.each_char.with_index do |char, i|
      unless DECRYPTION_TABLE.key?(char)
        message += char
        next
      end

      c = char
      (i % cnt + 1).times do
        c = DECRYPTION_TABLE[c]
      end
      message += c
    end

    message
  end
end

puts Decoder.decode("atC5kcOuKAr!")



