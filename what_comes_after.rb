# My code was ranked 7 out of 139. I didn't need any help.

def comes_after(str, letter)
  arr = []
  str.chars.each_with_index do |item, idx|
    if item.downcase == letter.downcase
      arr << str[idx + 1]
    end
  end
  arr.join.gsub(/[^a-zA-Z]/, "")

end

p comes_after("are you really learning Ruby?", 'r')# 'eenu') 
p comes_after("Pirates say arrrrrrrrr", 'r')# 'arrrrrrrr')
p comes_after("Free coffee for all office workers!", 'f')# 'rfeofi')
p comes_after("Every Sunday, she reads newspapers.", 's')# 'uhp')
p comes_after("king kUnta is the sickest rap song ever kNown", 'k')# 'iUeN')
p comes_after("p8tice makes pottery p_r p0rfect!", 'p')# 'o')
p comes_after("nothing to be found here", 'z')# '')