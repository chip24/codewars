f = File.open("wanikani.txt")

#out = File.open(wanikani_equals_removed, 'w')
f_data = f.read
line_count = 0
f_data.each_line do |line| 
  if line.count('H') > 0
    line_count += 1
    p "Line with 'TO HERE': #{line.strip}"
  end

end
 p "#{line_count} LINES WERE FOUND"

f.close