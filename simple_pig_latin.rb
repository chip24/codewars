# the method below was voted top on CodeWars
# def pig_it text
#   text.gsub(/(\w)(\w+)*/, '\2\1ay')
#end



def pig_it(text)
  pig_arr = []
  text.split(" ").map do |word|
    if word =~ (/[a-zA-Z]+/)
      pig_arr << (word.chars.rotate(1) << "ay").join()
    else
      pig_arr << word
    end
  end
  pig_arr.join(" ")
end

p pig_it("Pig latin is cool")
p pig_it("Hello world !")