def solution(list)
  grouped_list = []
  list.each_with_index do |num, idx|
      puts "The number is #{num}"
    #end
  end
  p grouped_list
end

def slicing(list)
  chunked_list = list.slice_when { |prev, curr| curr != prev.next}.to_a
  p chunked_list
  hyphen_arr =[]
  chunked_list.each do |arr|
    if arr.length == 1
      hyphen_arr << arr[0]
    elsif arr.length == 2
      hyphen_arr << arr[0]
      hyphen_arr << arr[1]
    else
      hyphen_arr << arr[0].to_s + "-" + arr[-1].to_s
    end
  end
p hyphen_arr.join(",")

end

slicing([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])