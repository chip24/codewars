# My code was ranked 6 out of 124.  I just Google to remember how to round to the tenth place (#round(-1))and how to round down (#floor).

def calc_tip(p, r)
  tip = p.round(-1) / 10
  if r == 1
    tip += 1
  elsif r == 0
    tip -= 1
    return tip = 0 if tip < 0
  #elsif r == -1
  else
    tip = (tip/2).floor - 1
    return tip = 0 if tip < 0
  end
  tip
end

p calc_tip(24,-1)