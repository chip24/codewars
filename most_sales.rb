# My code (top3b) was ranked 6 out of 49.  I needed Copilot's help to keep the original order of the products array when revenues were the same.  I needed to sort by the value first in descending order (-v) then sort by index (when values were the same).

def top3(products, amounts, prices)
  hash = {}
  products.each_with_index do |prod, idx|
    total = amounts[idx] * prices[idx]
    hash.store(prod, total)
  end
  hash.sort_by {|k, v| v}.map {|k, v| k}.reverse.take(3)
end


p top3(["Cell Phones", "Vacuum Cleaner", "Computer", "Autos", "Gold", "Fishing Rods", "Lego", " Speakers"],[5, 25, 2, 7, 10, 3, 2, 24],[51, 225, 22, 47, 510, 83, 82, 124])

p top3( ["Speakers", "Games", "Radios", "Drones", "Scooter"],[1, 1, 1, 1, 1],[10, 10, 10, 10, 10])

p top3(["Cell Phones", "Vacuum Cleaner", "Computer", "Autos", "Gold", "Fishing Rods", "Lego", " Speakers"],[5, 25, 2, 7, 10, 3, 2, 24],[51, 225, 22, 47, 510, 83, 82, 124])

# on 5-6 figure out how to get the last test to be in the order given

def top3b(products, amounts, prices)
  hash = products.each_with_index.to_h { |prod, idx| [prod, amounts[idx] * prices[idx]] }
  
  hash.sort_by.with_index { |(k, v), i| [-v, i] }
      .map(&:first) 
      .take(3)
end

p top3b(["Cell Phones", "Vacuum Cleaner", "Computer", "Autos", "Gold", "Fishing Rods", "Lego", " Speakers"],[5, 25, 2, 7, 10, 3, 2, 24],[51, 225, 22, 47, 510, 83, 82, 124])

p top3b( ["Speakers", "Games", "Radios", "Drones", "Scooter"],[1, 1, 1, 1, 1],[10, 10, 10, 10, 10])

p top3b(["Cell Phones", "Vacuum Cleaner", "Computer", "Autos", "Gold", "Fishing Rods", "Lego", " Speakers"],[0, 12, 24, 17, 19, 23, 120, 8],[9, 24, 29, 31, 51, 8, 120, 14])