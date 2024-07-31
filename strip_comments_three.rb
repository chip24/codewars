# the top solutions was:
#def solution(input, markers)
#  input.gsub(/\s+[#{markers.join}].*/, "")
#end



# the code below passed the tests but is messy

def solution(input, markers)
  p markers
  input_arr = input.split(/[\t\n]/)
  p input_arr
  stripped_arr = []
  input_arr.each do |str|
    puts "the str is #{str}"
    markers.each do |mrkr|
      puts "THE MRKR is #{mrkr}"
      #on 7-9 figure out how to add a string to the array of it doesn't include any markers
      if str.include?(mrkr)
        puts "calling if on #{str}"
        str = str.split(mrkr)[0]
        puts "adding #{str} to stripped_arr"
        stripped_arr << str
      else 
        stripped_arr << str unless stripped_arr.include?(str)
    end
  end
  end
  #markers_str = markers.join(",")
  #puts markers_str
  no_dup_arr = [] 
  #stripped_arr.each do |str|
  #  no_dup_arr << str unless str.any?(markers)
  #end
  #stripped_arr.any? {}
  p stripped_arr
  p markers
  #no_dup_arr = stripped_arr.reject {|item| markers.include?(item)}
  stripped_arr.delete_if { |string| markers.any? { |char| string.include?(char) } }
  p stripped_arr
  stripped_arr_stripped = stripped_arr.each {|ele| ele.strip!}
  p stripped_arr_stripped
  p stripped_arr_stripped.uniq.join("\n")
  puts "***SOLUTION***"
  #puts input.rstrip
  #puts "check for spaces"
end
#solution("apples, plums % these are round\npears ! and bananas\noranges # no lemons", ["%", "!", '#'])
#solution("fjdkkf #TESTING       ", ["*", "#"])
#solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
#solution("bananas !appples", ["!"])
solution("apples, plums % and bananas\npears\noranges !applesauce",
  ["%", "!"])