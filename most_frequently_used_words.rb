# There was a big variety of solutions in CodeWars.  The top one is pasted below.  I think my answer would have been higher in the best practices ranking if I had put it on separate lines.  Actually, I'm going to resubmit it like this and see what happens. (I tried it and I think it accepted both answers as the same.)

=begin
def top_3_words(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end
=end

def top_3_words(text)
  text.gsub(/[^\w' ]+/, '').downcase.split.tally.sort_by {|k,v| v }.sort_by {|subarr| -subarr[1]}.take(3).map {|subarr| subarr[0]}.map {|str| str.gsub(/(?<!\w)'+(?!\w)/, '')}.reject {|str| str.empty? }
end

# on 11-9., figure out how to return [] instead of [""] for empty strings

#p top_3_words("In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. An olla of rather more beef than mutton, a salad on most nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays, made away with three-quarters of his income.")

#p top_3_words("a a a  b  c c  d d d d  e e e e e")
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
p top_3_words("  //wont won't won't ")
p top_3_words("  , e   .. ")
p top_3_words("  ...  ")
p top_3_words("  '  ")
p top_3_words("  '''  ")