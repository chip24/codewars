def cakes(recipe, available)
  #puts recipe.size
  #puts available.size
  if recipe.size > available.size
    #puts 0
    return 0
  else
    results = []
    recipe.each do |k1,v1|
      available.each do |k2,v2|
      #puts "recipe key is #{k1}"
      #puts "recipe value is #{v1}"
      #puts "available key is #{k2}"
      #puts "available value is #{v2}"
       if k2 == k1
        results << v2/v1
       end
      end 
    end
    #p results.sort
    if results.length == recipe.size
      puts results.sort[0]
      results.sort[0]
    else
      puts 0
      return 0
    end

  end
  
end

cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})
#cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000})
cakes({"nuts"=>7, "oil"=>14, "milk"=>9, "flour"=>8, "chocolate"=>4},{"pears"=>30, "milk"=>30, "apples"=>160, "oil"=>120, "crumbles"=>60})