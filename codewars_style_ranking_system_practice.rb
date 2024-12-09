#I submitted this code to CodeWars. The top solution is below.

=begin 
class User
  RANKS = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8]

  def initialize
    @points = 0
  end
  
  def rank
    RANKS[@points / 100] || 8
  end
  
  def progress
    rank == 8 ? 0 : @points % 100
  end
  
  def inc_progress(completed_rank)
    raise "Invalid rank" unless index = RANKS.index(completed_rank)

    @points += case delta = index - @points / 100
    when -1    then 1
    when 0     then 3
    when 1..16 then 10 * delta * delta
    else            0
    end    
  end
end
=end


class User

  attr_accessor :rank, :progress

  def initialize(rank = -8, progress = 0)
    @rank = rank
    @progress = progress
  end

  def inc_progress(activity_level)
    raise ArgumentError, "activity_level cannot be 0" if activity_level == 0
    raise ArgumentError, "activity_level cannot exceed 8" if activity_level > 8
    raise ArgumentError, "activity_level cannot be under -8" if activity_level < -8
    if @rank == 8
      @progress = 0
    elsif activity_level == @rank
      @progress += 3
    elsif activity_level == @rank - 1
      @progress += 1
    elsif activity_level == -1 && @rank == 1 
      @progress += 1
    elsif activity_level > @rank
      if activity_level - @rank == 1
        @progress +=10
      elsif activity_level == 1 && @rank == -1
        @progress += 10
      elsif activity_level > 0 && @rank <= -1
        diff = ((activity_level - @rank)-1).abs 
        @progress += (10 * diff * diff)
      else
        diff = (activity_level - @rank).abs
        @progress += (10 * diff * diff)
    end
    end
    
    rank_up_or_not
    if @rank == 8
      @progress = 0 
    end
  end

  def rank_up_or_not
    while @progress >= 100
      @progress -= 100
      rank_up
    end
  end

  def rank_up
    #if @progress 
    if @rank == -1
      @rank = 1
    elsif @rank < 8
      @rank += 1
    end
  end

end

# on 11-15 fix point logic to include +1 points when rank is -1 and activity_level is 1
p user1 = User.new()
p user1.rank
p user1.progress = 20
user1.rank = 8
user1.inc_progress(8)
p user1
