# most of the top CodeWars answers used the #scan method to search the order string for menu items

# def get_order(order)
#  %w[Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke].map do |word|
#    order.scan(/#{word}/i)
#  end.flatten.each(&:capitalize!).join(' ')
#end

def get_order(order)
  menu_arr = ["Burger", "Fries", "Chicken", "Pizza", "Sandwich", "Onionrings", "Milkshake", "Coke"]

  extracted_elements = []

  menu_arr.each do |item|
    item_downcase = item.downcase

    while order.include?(item_downcase)
      extracted_elements << item
      order.sub!(item_downcase, '')
    end
  end
  extracted_elements.join(' ')
end

p get_order("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza")