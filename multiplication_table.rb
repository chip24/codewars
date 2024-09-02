#The top Codewars answer
# def multiplication_table(size)
#  (1..size).map do |i|
#    (1..size).map { |j| i * j }
#  end
#end

def multiplication_table(size) 
	table = Hash.new

  (1..size).each do |i|
    products = []

    (1..size).each do |e|
      products.push(i * e)
    end
    table[i] = products
  end
  table.values
		
end

p multiplication_table(3)
p multiplication_table(4)

#I tried to skip creating a hash and just do an array,
#but the below doesn't work.  It puts everything in one array 

def multiplication_table2(size) 
  #table = Hash.new
  products = []
  (1..size).each do |i|
    

    (1..size).each do |e|
      products.push(i * e)
    end
  end
  products
    
end

p multiplication_table2(3)
p multiplication_table2(4)