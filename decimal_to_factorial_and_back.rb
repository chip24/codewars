#Somehow my code ended up as the top answer on CodeWars - maybe because it was the shortest.

def dec_2_fact_string(nb)
  div = 1
  rem_arr = []
  until nb == 0 do
    rem_arr << nb % div
    nb = nb / div
    div += 1
  end
  rem_arr.map {|num| num >= 10 ? (num + 55).chr : num }.join.reverse
end

def fact_string_2_dec(str)
  int_str = str.chars.reverse.map {|val| val.match?(/[[:alpha:]]/) ? (val.ord) - 55 : val.to_i }
  int_str.map.with_index {|char,idx| char.to_i * (2..idx).reduce(1,:*) }.reduce(0) {|sum,num| sum + num }
end

#On 10-16, figure out dec_2_fact_string algorithm.  It looks like fact_string_2_dec is working
#p dec_2_fact_string(463)
#p fact_string_2_dec("341010")
#p dec_2_fact_string(463)
#p dec_2_fact_string(36288000)
#p dec_2_fact_string(371993326789901217467999448150835199999999)
p fact_string_2_dec("H7I18EGHAC8007182345123200")