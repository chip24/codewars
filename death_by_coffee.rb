require 'date'

def coffee_limits(year, month, day)
  date_object = Date.new(year, month, day)
  b_day = date_object.strftime("%Y%m%d").to_i
end

# on 8-21 start on page 356 of LERTBD

p coffee_limits(1950, 1, 19) # [2645, 1162]
p coffee_limits(1965,12,11) # [111,0]
p coffee_limits(1964, 11, 28) # [0, 11]
p coffee_limits(1965, 9, 4) # [0,0]