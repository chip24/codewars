# My code was ranked 8 out of 98.  I needed to look up how to put multiple characters (some needing to be escaped) in gsub in Google.

def evenator(s)
  new_s = s.gsub(/[\.,\?!_]/,"")
  new_s.split.map do |word| 
    if word.length.odd?
      word + word[-1]
    else
    word
    end
  end.join(" ")
end

p evenator('') # 'Should return empty')
p evenator('tHiS sEnTeNcE iS eVeN.')# 'tHiS sEnTeNcE iS eVeN', 'This sentence is even so return as is')
p evenator('even')# 'even', 'This sentence is even so return as is')
p evenator('even od!')# 'even od', 'This sentence is even so return as is')
p evenator('even oddd.')# 'even oddd', 'This sentence is even so return as is')
p evenator('underscore is not considered a word..in this case,')#  'underscore is nott considered aa wordin this case')

