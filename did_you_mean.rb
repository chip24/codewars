# I got the levenshtein distance part from Stack Exchange.  One of the top CodeWars answers is very similiar ro mine but uses only one line.

=begin
require "rubygems/text"

class Dictionary
  include Gem::Text

  def initialize(words)
    @words = words
  end

  def find_most_similar(term)
    @words.sort_by { |word| levenshtein_distance(term, word) }.first
  end
end
=end


require "rubygems/text"

class Dictionary
  def initialize(words)
    @words=words
  end
  def find_most_similar(term)
    ld = Class.new.extend(Gem::Text).method(:levenshtein_distance)
    dist_arr = @words.map {|word| ld.call(word,term)}
    shortest_idx = dist_arr.each_with_index.min
    @words[shortest_idx[1]]
  end
end

fruits = Dictionary.new(['cherry', 'pineapple', 'melon', 'strawberry', 'raspberry'])
fruits.find_most_similar('strawbery')






#p ld.call("asd", "sdf")