# I knew the basic way to solve this, but I got Claude to help with the details.  This code was ranked about 35out of 1750. For some reason, so many people completed this kata in Ruby. 

class Calc
  def initialize
    @value = nil
    @operation = nil
  end
  
  # Define number methods
  def zero
    handle_number(0)
  end
  
  def one
    handle_number(1)
  end
  
  def two
    handle_number(2)
  end
  
  def three
    handle_number(3)
  end
  
  def four
    handle_number(4)
  end
  
  def five
    handle_number(5)
  end
  
  def six
    handle_number(6)
  end
  
  def seven
    handle_number(7)
  end
  
  def eight
    handle_number(8)
  end
  
  def nine
    handle_number(9)
  end
  
  # Define operation methods
  def plus
    @operation = :+
    self
  end
  
  def minus
    @operation = :-
    self
  end
  
  def times
    @operation = :*
    self
  end
  
  def divided_by
    @operation = :/
    self
  end
  
  private
  
  def handle_number(num)
    if @value.nil?
      @value = num
      self
    else
      @value.send(@operation, num)
    end
  end
end

puts Calc.new.one.plus.one      # Returns 2
puts Calc.new.six.divided_by.two # Returns 3
puts Calc.new.seven.times.five   # Returns 35
puts Calc.new.nine.minus.four    # Returns 5