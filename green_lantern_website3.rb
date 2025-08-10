# After I submitted my code, I asked Copilot to optimize it and it gave me the following.  However, it doesn't rearrange the hex codes correctly.

def yellow_be_gone(color)
  yellows = {
    "gold" => "ForestGreen",
    "khaki" => "LimeGreen",
    "lemonchiffon" => "PaleGreen",
    "lightgoldenrodyellow" => "SpringGreen",
    "lightyellow" => "MintCream",
    "palegoldenrod" => "LightGreen",
    "yellow" => "Lime"
  }

  key = color.downcase
  return yellows[key] if yellows.key?(key)

  if color.match?(/^#\h{6}$/i)
    r, g, b = color[1..2].to_i(16), color[3..4].to_i(16), color[5..6].to_i(16)
    if r > b && g > b
      hex = [r, b, g].map { |n| n.to_s(16).rjust(2, '0') }
      return "#" + hex.join
    end
  end

  color
end

p yellow_be_gone("lemonchiffon")# eq "PaleGreen"
p yellow_be_gone("GOLD")# eq "ForestGreen"
p yellow_be_gone("pAlEgOlDeNrOd")# eq "LightGreen"
p yellow_be_gone("BlueViolet")# eq "BlueViolet"
p yellow_be_gone("#000000")# eq "#000000" 
p yellow_be_gone("#b8860b")# eq "#0bb886"  
p yellow_be_gone("#8FBC8F")# eq "#8FBC8F"
p yellow_be_gone("#C71585")# eq "#C71585"
p yellow_be_gone("#16d90a") # eq "#0ad916"
p yellow_be_gone("#63e819") # eq "#19e863"
