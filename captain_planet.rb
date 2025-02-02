#My code was ranked 8 out of 129 on CodeWars.  I only used AI to figure out how to do a couple of steps.

$data_file = "##################################
Location: DEU
##################################
Ammonia: 023 particles
Nitrogen Oxide: 019 particles
Carbon Monoxide: 127 particles
##################################
##################################
Location: USA
##################################
Ammonia: 200 particles
Nitrogen Oxide: 120 particles
Carbon Monoxide: 120 particles
##################################
##################################
Location: AUS
##################################
Ammonia: 122 particles
Nitrogen Oxide: 132 particles
Carbon Monoxide: 127 particles
##################################"


def parse_data
data_arr = $data_file.split("##################################").map {|str| str.gsub(/\n/, "")}.slice_after("").to_a[1..-1]

data_arr_stripped = data_arr.map {|sub_arr| sub_arr.reject(&:empty?)}

data = data_arr_stripped.map do |sub_arr|
  sub_arr.map do |str|
    if str.include?("particles")
      str.gsub!("particles"," ")
    else
      str
    end
  end
end

result = data.map do |location, measurements| [location] + measurements.scan(/(Ammonia: \d{3}|Nitrogen Oxide: \d{3}|Carbon Monoxide: \d{3})/).flatten
end

keys = ["Location", "Ammonia", "Nitrogen Oxide", "Carbon Monoxide"]

data_arr_of_hashes = result.map do |sub_arr|
  keys.zip(sub_arr.map { |item| item.split(": ")[1] }).to_h
end

str_to_int_arr = data_arr_of_hashes.map do |hash|
  hash.transform_values do |value|
    if value.match?(/^\d+$/)
      value.to_i 
    else
      value 
    end
  end
end


pollutants = ["Ammonia", "Nitrogen Oxide", "Carbon Monoxide"]

final_arr = pollutants.map do |key|
  max_value = str_to_int_arr.map {|hash| hash[key] }.max
  str_to_int_arr.select {|hash| hash[key] == max_value}.map {|hash| hash["Location"]}
end

final_arr

result = "Ammonia levels in #{final_arr[0].join(", ")} are too high. Nitrogen Oxide levels in #{final_arr[1].join(", ")} are too high. Carbon Monoxide levels in #{final_arr[2].join(", ")} are too high."

end


p parse_data


