#def sq(h,v,s)
#  (v.to_f/h*(Math.sqrt(s**2 + h**2))).round(4)
#end

#def sq(h,v,s)v.to_f/h*Math.sqrt(s**2 + h**2).round(4)end

#def sq (h,v,s)(v/h.to_f*Math.hypot(h,s)).round(4)end

# this works in Sublime but not in CodeWars
def sq(h,v,s)=(v/h.to_f*Math.hypot(h,s)).round(4)

# I finally submitted the following code which Claude helped me shorten. My code was ranked 2nd in CodeWars

def sq(h,v,s)(v*Math.hypot(h,s)/h).round(4)end





#on 12-14 figure out how to shave off 4 or more characters
p sq(4,16,3)
p sq(4,4,3)
p sq(8,9,37)
p sq(526,682,140)

