#below was the top answer on CodeWars
#def to_camel_case(str)
#str.gsub(/[_-](.)/) {"#{$1.upcase}"}
#end


def to_camel_case(str)
  str.gsub(/-[a-z]|_[a-z]/, &:upcase).delete('-_')
end

puts to_camel_case("the-stealth-warrior")
puts to_camel_case("The_stealth_warrior")
puts to_camel_case("The-Stealth_Warrior")