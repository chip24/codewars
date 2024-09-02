#one of the top answers on CodeWars
# def kebabize(str)
#str.delete('^A-Za-z').split(/(?=[A-Z])/).join('-').downcase
#end

def kebabize(str)
  str.split(/(?=[A-Z])/).map(&:downcase).join('-').gsub(/[^a-z-]/, "").delete_prefix("-")
end


p kebabize('myCamelCasedString')
p kebabize('myCamelHas3Humps')
p kebabize('CAMEL')
p kebabize("7Dmauk148eYpnsri3oh256jtbcv")