# The top Codewars answer was almost the same as mine
# def dup(arr)
#  arr.map(&:squeeze)
#end


def dup(arr)
   arr.map {|word| word.squeeze}
end

p dup(["abracadabra","allottee","assessee"])