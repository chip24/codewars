def open_or_senior(data)
  output_array = []
  data.each do |elem|
    if elem[0] >= 55 && elem[1] > 7
      output_array << "Senior"
    else
      output_array << "Open"
    end
  end
  output_array
end

input =  [[18, 20], [45, 2], [61, 12], [37, 6], [21, 21], [78, 9]]

open_or_senior(input)

