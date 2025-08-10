def yellow_be_gone(color_name_or_code)
  color_hash = {"Gold" => "ForestGreen",
    "Khaki" => "LimeGreen",
    "LemonChiffon" => "PaleGreen",
    "LightGoldenRodYellow" => "SpringGreen",
    "LightYellow" => "MintCream",
    "PaleGoldenRod" => "LightGreen",
    "Yellow" => "Lime"}
  downcase_hash = color_hash.transform_keys(&:downcase)
  downcase_code = color_name_or_code.downcase
  p "The downcase code is #{downcase_code}"


  if downcase_hash.has_key?(downcase_code)
    return downcase_hash[downcase_code]
  elsif color_name_or_code.match?(/\d/)
    puts "true"
    p color_code = color_name_or_code[1..-1]
    p colors_hex = color_code.scan(/.{2}/)
    p colors_dec =  color_code.scan(/.{2}/).map {|color| color.to_i(16)}
    p hex_sorted = colors_hex.sort_by {|hex_string| hex_string.to_i(16) }
    if colors_dec[0] > colors_dec[2] && colors_dec[1] > colors_dec[2]
      puts "Red and Green are larger than Blue"
      return "#" + hex_sorted[0] + hex_sorted[2] + hex_sorted[1]
      

      #return color
    #end

  else
    return color_name_or_code
  end
  end
  return color_name_or_code
end

# on 7-5 figure out how to put the codes with red the smallest, green the largest, and blue the middle and then conert them back to hex, combine them, and add a # at the beginning.
 

#p yellow_be_gone("lemonchiffon")# eq "PaleGreen"
#p yellow_be_gone("GOLD")# eq "ForestGreen"
#p yellow_be_gone("pAlEgOlDeNrOd")# eq "LightGreen"
#p yellow_be_gone("BlueViolet")# eq "BlueViolet"
#p yellow_be_gone("#000000")# eq "#000000" 
#p yellow_be_gone("#b8860b")# eq "#0bb886"  
#p yellow_be_gone("#8FBC8F")# eq "#8FBC8F"
#p yellow_be_gone("#C71585")# eq "#C71585"
p yellow_be_gone("#16d90a") # eq "#0ad916"
#p yellow_be_gone("#63e819") # eq "#19e863"

