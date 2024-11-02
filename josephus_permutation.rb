#I submitted josephus3, which I got most of the ideas from on

# I submitted josephus3.  Half of the code came from Medium.  The top CodeWars answer is below.

# def josephus(items,k)
#  Array.new(items.size) { items.rotate!(k).pop }
#end

def josephus3(items, k = 1)
  dead_arr = []
  
  return [] if items.size == 0
  
  until items.size == 1
    items.rotate!(k - 1)
    dead_arr << items[0]
    p items
    items.delete_at(0)
    #p players
  end
  dead_arr << items.first
  #dead_arr
end

p josephus3([1,2,3,4,5,6,7],3)
p josephus3([1,2,3,4,5,6,7,8,9,10],1)
p josephus3([1,2,3,4,5,6,7,8,9,10],2)
p josephus3(["C","o","d","e","W","a","r","s"],4)
p josephus3([],3)



