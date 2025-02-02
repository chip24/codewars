

f = File.open("wanikani.txt")

f_data = f.read
line_count = 0
f_data.each_line do |line| 
  if line.count('=') > 1
    line_count += 1
    p "Line with multiple equals: #{line.strip}"
  end

end
 p "#{line_count} LINES WERE FOUND"

f.close
=begin
# on 12-30, find out how to change the path in Sublime
File.open("wanikani.txt", "r") do |file|
  contents = file.read
  puts contents
end
=end