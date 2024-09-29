# There weren't many answers on CodeWars, but here are the top two.  A lot of the answers used %ceil to round the year up

=begin
def what_century(year)
  century  = (year.to_f / 100).ceil
  year = century % 10
  nth_year = (11..13).include?(century) || !(1..3).include?(year)
  return "#{century}th" if nth_year
  return "#{century}st" if year == 1
  return "#{century}nd" if year == 2
  return "#{century}rd" if year == 3
end

require 'active_support/all'
def what_century(year)
  ((year.to_i - 1) / 100 + 1).ordinalize
end
=end


def what_century(year)
  if year.chars[2..3].join == "00"
    cent = year.chars[0..1].join.to_i
  else
    cent = year.chars[0..1].join.to_i + 1
  end

  if (cent % 10 == 1 && cent % 100 != 11)
    suffix = "st"
  elsif (cent % 10 == 2 && cent % 100 != 12)
    suffix = "nd"
  elsif (cent % 10 == 3 && cent % 100 != 13)
    suffix = "rd"
  else
    suffix = "th"
  end
  cent.to_s + suffix

end

# on 9-10 fix the logic for teen numbers and dealing with years ending in 00 (e.g. 2000 is in the 20th century)

p what_century("1001")
p what_century("2001")
p what_century("1101")
p what_century("2101")
p what_century("1201")
p what_century("2201")
p what_century("1200")
p what_century("4201")
p what_century("9999")
p what_century("1000")