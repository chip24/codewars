# my answer was essentially the same as the second top answer in CodeWars


class Array
  def square
    self.map {|num| num ** 2}
  end

  def cube
    self.map {|num| num ** 3}
  end

  def average
    self.sum / self.size
  end

  def even
    self.select(&:even?)
  end

  def odd
    self.select(&:odd?)
  end
end

p [1,2,3,4,5].square
p [1,2,3,4,5].cube
p [1,2,3,4,5].average
p [1,2,3,4,5].sum
p [1,2,3,4,5].even
p [1,2,3,4,5].odd

