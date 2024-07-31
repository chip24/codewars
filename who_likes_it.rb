# the Codewars top answer and mine were very similar except the top answer left out length = names.length and just put case names.size


def likes(names)
  length = names.length
  #puts length
  case length
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{(names.length) -2} others like this" 
  end
end

puts likes([])
puts likes(["Peter"])
puts likes(["Jacob", "Alex"])
puts likes(["Max", "John", "Mark"])
puts likes(["Alex", "Jacob", "Mark", "Max"])
