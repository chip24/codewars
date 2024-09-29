# I used Copilot to help with this.  For some reason, I didn't think to make a new arr (called "result") and push each character to it but then pop the character if the next char was "#".  I took Copilot's answer and shortened it.  The top Codewars answer is below

# def clean_string(string)
#  string.chars.reduce('') { |result, c| c == '#' ? result.chop : result << c }
#end

def clean_string(string)
  result = []
  string.each_char {|char| char == "#" ? result.pop : result.push(char)}
  result.join

end

p clean_string('abc#d##c')
p clean_string('abc####d##c#')


def process_string(str)
  result = []
  str.each_char do |char|
    if char == '#'
      result.pop unless result.empty?
    else
      result.push(char)
    end
  end
  result.join
end

# Example usage:
p process_string('abc#d##c')  # Output: 'ac'
p process_string('abc####d##c#')

def clean_string2(string)
  string.chars.reduce('') { |result, c| c == '#' ? result.chop : result << c }
end

p clean_string2('abc#d##c')
p clean_string2('abc####d##c#')