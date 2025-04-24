# My code was ranked 6th.  I only Googled documentation for the Date class and the best way to get the last digit of the day.

require 'date'

def get_villain_name(birthday)
  first = ["The Evil","The Vile","The Cruel", "The Trashy", "The Despicable", "The Embarrassing", "The Disreputable", "The Atrocious", "The Twirling", "The Orange", "The Terrifying", "The Awkward"]
  last = ["Mustache", "Pickle", "Hood Ornament", "Raisin", "Recycling Bin", "Potato", "Tomato", "House Cat", "Teaspoon", "Laundry Basket"]
  last_day_digit = birthday.day % 10
  [first[birthday.month-1], last[last_day_digit]].join(" ")
end

p get_villain_name(Date.new(2000, 1, 1))
p get_villain_name(Date.new(2000, 2, 2))
p get_villain_name(Date.new(2000, 12, 2))

