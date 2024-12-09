def guess_gifts(wishlist, presents)
  match_hash = Hash.new(0)
  presents.each do |pres|
    wishlist.each do |wish| 
      p pres[:size]
      p wish[:size]
      if pres[:size] == wish[:size] 
        p "#{pres[:size]} is the size of #{wish[:name]}"
        match_hash[wish[:name]] += 1
      end
      if pres[:clatters] == wish[:clatters]
        p "#{pres[:clatters]} is the sound of #{wish[:name]}"
        match_hash[wish[:name]] += 1
      end
      if pres[:weight] == wish[:weight]
        p "#{pres[:weight]} is the weight of #{wish[:name]}"
        match_hash[wish[:name]] += 1
      end

    end
  end
  p match_hash
  p max = match_hash.values.max
  match_arr = []
  match_hash.each {|k,v| match_arr << k if v == max}
  match_arr
end

# on 11-5 figure out how to use levenshtein distance.  Also used it in did_you_mean.rb
  p guess_gifts([
        {:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
        {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
        {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}
      ],
      [
        {:size => "medium", :clatters => "a bit", :weight => "medium"},
        {:size => "small", :clatters => "yes", :weight => "light"}
      ])
# find out why this one below doesn't work in 11-6
#p guess_gifts([{:name=>"pack of marbles", :size=>"small", :clatters=>"yes", :weight=>"medium"}, {:name=>"pack of crayons", :size=>"small", :clatters=>"a bit", :weight=>"light"}, {:name=>"rocking horse", :size=>"large", :clatters=>"no", :weight=>"heavy"}, {:name=>"bobble hat", :size=>"small", :clatters=>"no", :weight=>"light"}, {:name=>"game console", :size=>"medium", :clatters=>"a bit", :weight=>"medium"}, {:name=>"humming top", :size=>"medium", :clatters=>"a bit", :weight=>"light"}, {:name=>"train set", :size=>"large", :clatters=>"a bit", :weight=>"medium"}, {:name=>"card game", :size=>"small", :clatters=>"no", :weight=>"light"}, {:name=>"socks", :size=>"small", :clatters=>"no", :weight=>"light"}, {:name=>"mini puzzle", :size=>"small", :clatters=>"yes", :weight=>"light"}, {:name=>"toy car", :size=>"medium", :clatters=>"a bit", :weight=>"medium"}, {:name=>"backpack", :size=>"medium", :clatters=>"no", :weight=>"light"}, {:name=>"bike", :size=>"large", :clatters=>"a bit", :weight=>"heavy"}, {:name=>"pullover", :size=>"medium", :clatters=>"no", :weight=>"light"}, {:name=>"cuddly toy", :size=>"medium", :clatters=>"no", :weight=>"light"}, {:name=>"puzzle", :size=>"medium", :clatters=>"yes", :weight=>"light"}, {:name=>"poster", :size=>"medium", :clatters=>"no", :weight=>"light"}],[{:size=>"medium", :clatters=>"a bit", :weight=>"medium"}, {:size=>"medium", :clatters=>"yes", :weight=>"light"}, {:size=>"large", :clatters=>"a bit", :weight=>"medium"}, {:size=>"small", :clatters=>"no", :weight=>"light"}, {:size=>"medium", :clatters=>"no", :weight=>"light"}])

#Expected: ["backpack", "bobble hat", "card game", "cuddly toy", "game console", "poster", "pullover", "puzzle", "socks", "toy car", "train set"])

#, instead got: ["backpack", "cuddly toy", "humming top", "poster", "pullover"]