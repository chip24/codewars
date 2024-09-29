# the top Codewars answer was simliiar to mine but they used case instead of if and elsif
=begin
def parse(data)
  val = 0
  out = []
  
  data.each_char { |cmd|
    case cmd
      when 'i' then val += 1
      when 'd' then val -= 1
      when 's' then val *= val
      when 'o' then out << val
    end
  }
  
  return out
end
=end


def parse(data)
  start = 0
  answer_arr = []
  data.chars.map do |char|
    if char == "i"
      start += 1
      #puts  "start after i: #{start}"
    elsif char == "s"
      start = start ** 2
      #puts  "start after s: #{start}"
    elsif char == "d"
      start -= 1
      #puts  "start after d: #{start}"
    elsif char == "o"
      answer_arr << start
      #puts  "start after o: #{start}"
    end
  end
    answer_arr
end

p parse("ooo")
p parse("iiisdoso")
p parse("ioioio")
p parse("idoiido")
p parse("isoisoiso")
p parse("codewars")

