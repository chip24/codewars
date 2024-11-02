#My code was ranked 6th on CodeWars for best practices.  The top answer is below.

#def lcm(*args)
#  args.reduce(&:lcm)
#end


def lcm(first, *rest)
  [first,*rest].reduce(1){ |acc, n| acc.lcm(n) }
end

p lcm(2,5)
p lcm(2,3,4)
p lcm(9)
p lcm(0)
p lcm(0,1)


