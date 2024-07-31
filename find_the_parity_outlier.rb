# below was the top answer on CodeWars
# def find_outlier(integers)
#integers.partition(&:odd?).find(&:one?).first
#end




def find_outlier(integers)
  #puts "0 modulo 2 equals #{0%2}"
  if integers[0] % 2 == 0 && integers[1] % 2 == 0
    #puts "integer[0] is #{integers[0]} and integer[1] is #{integers[1]} and outputs #{integers[0].even?} #{integers[1].even?} for even.}"
    integers.select(&:odd?).first
  elsif integers[0] % 2 != 0 && integers[1] % 2 != 0
    integers.select(&:even?).first
  else
    true_false_hash = {}
    integers.first(3).each do |int|
      if int % 2 == 0
        true_false_hash[int] = "even"
      else
        true_false_hash[int] = "odd"
      end
    end
     count = Hash[true_false_hash.values.group_by{|i| i}.map {|k,v| [k,v.count]}]
     h_uniq, h_dups = true_false_hash.partition{ |k,v| count[v] == 1}.map(&:to_h)
     h_uniq.keys.first
  end
  
end

# on 7-29 find out how to return the unique value in the true_false_hash
p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
p find_outlier([160, 3, 1719, 19, 11, 13, -21])
p find_outlier([1, 3, 6])
p find_outlier([0,1,2])
p find_outlier([1,2,3])

