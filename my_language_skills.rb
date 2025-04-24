 # My code was ranked 13 out of 505. I only needed to Google how to sort a hash by value.

def my_languages(results)
  arr = results.sort_by {|k,v| v}.reverse
  lang_arr = []
  arr.each do |sub_arr| 
    if sub_arr[1] >= 60
      lang_arr << sub_arr[0]
    end
  end
  lang_arr
end

p my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})

