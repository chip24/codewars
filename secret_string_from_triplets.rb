def recover_secret(triplets)
  duplets = []
  res = ''
  triplets.each do |triplet|
    #p triplet
    #triplet.each do
      str = triplet.join
      d1 = str[0,2]
      d2 = str[1,3]
      duplets << d1 unless duplets.include?(d1)
      duplets << d2 unless duplets.include?(d2)
  end
  duplets
end

p recover_secret([['t','u','p'],['w','h','i'],['t','s','u'],['a','t','s'],['h','a','p'],['t','i','s'],['w','h','s']])