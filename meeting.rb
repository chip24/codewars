# the top two answers in Codewars were better than mine
=begin
def meeting(s)
  names =
    s
      .upcase
      .split(";")
      .map { |name| name.split(":") }
      .sort_by { |name, last| [last, name] }
      .map { |name, last| "(#{last}, #{name})" }
      .join
end

def meeting(s)
  s.upcase.gsub(/(\w+):(\w+)/) {"(#{$2}, #{$1})"}.split(";").sort.join
end
=end




def meeting(s)
  name_arr = s.split(';').map {|name| name.split(':')}
  lastname_first_arr = name_arr.map {|arr| arr[0],arr[1] = arr[1],arr[0]}
  capitalized_arr = lastname_first_arr.map do |sub_array|
    sub_array.map(&:capitalize)
  end
  joined_sorted_arr = capitalized_arr.map {|arr| arr.join}.sort
  joined_sorted_arr.map {|str| str.split(/(?=[A-Z])/)}.map {|arr| arr.join(', ')}.map {|str| str.upcase}.map {|str| str.prepend('(')}.join(')') + ")"
end

#on 9-5 figure out how to deal with all caps names in original string

# p meeting("Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill")

p meeting("Fred:Corwill;Wilfred:Corwill;BARNEY:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill")


