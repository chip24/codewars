# My code was ranked 5 out of 133.

def validate_time(time)
  !!time[/\A([0-9]|[01]\d|2[0-3]):[0-5]\d\z/]

end

p validate_time('01:00')
p validate_time('1:00')
p validate_time('00:00')
p validate_time('13:1')
p validate_time('12:60')