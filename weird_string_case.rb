def weirdcase(string)
	string.chars.map.with_index {|char,idx| idx.even? ? char.upcase: char.downcase }.join
end

p weirdcase('string')
p weirdcase('this is a string')
p weirdcase('Weird string case')

# I submitted weirdcase2 to Codewars, but I could have gotten rid of the new_array variable and just added .join(' ') right after end and had it work.  I showed this below in weirdcase3
def weirdcase2(string)
	
	new_array = string.split(' ').map do |word|
		word.chars.map.with_index {|char,idx| idx.even? ? char.upcase: char.downcase }.join
	end
	new_array.join(' ')
end

p weirdcase2('string')
p weirdcase2('this is a string')
p weirdcase2('Weird string case')

def weirdcase3(string)
	
	string.split(' ').map do |word|
		word.chars.map.with_index {|char,idx| idx.even? ? char.upcase: char.downcase }.join
	end.join(' ')
	
end

p weirdcase3('string')
p weirdcase3('this is a string')
p weirdcase3('Weird string case')



=begin
string_arr =[]
	string.split(' ').map do |word|
		string_arr << word.chars
	end
	string_arr.each_with_index.select  {|char,idx| idx.even? ? char.upcase : char.downcase}.map(&:first)
		
		string_arr
=end
