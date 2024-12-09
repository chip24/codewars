class User

  #RANKS = (-8..-1).to_a + (1..8).to_a
  attr_accessor :rank, :progress

  def initialize(rank = -8, progress = 0)
    @rank = rank
    @progress = progress
    puts "rank is #{@rank} and progress is #{@progress}"
  end

  def inc_progress(activity_level)
    puts "The ACTIVITY_LEVEL is #{activity_level}"
    raise ArgumentError, "activity_level cannot be 0" if activity_level == 0
    raise ArgumentError, "activity_level cannot exceed 8" if activity_level > 8
    raise ArgumentError, "activity_level cannot be under -8" if activity_level < -8
    if @rank == 8
      puts "The @rank is 8 and you can't progress more"
      @progress = 0
    elsif activity_level == @rank
      puts "activity_level == @rank was triggered and added 3 to the progress total."
      @progress += 3
    elsif activity_level == @rank - 1
      puts "activity_level == @rank - 1 was triggered and added 1 to the progress total"
      @progress += 1
    elsif activity_level == -1 && @rank == 1 
      puts "activity_level == -1 && @rank == 1 was triggered and added 1 to progress"
      @progress += 1
    elsif activity_level > @rank
      if activity_level - @rank == 1
        puts "This += 10 was triggered by the activity level of #{activity_level} and the rank of #{rank}"
        @progress +=10
      elsif activity_level == 1 && @rank == -1
        puts "Act level is 1 and rank is -1"
        @progress += 10
      elsif activity_level > 0 && @rank <= -1
        puts "This  diff minus 1 was triggered by the activity level of #{activity_level} and the rank of #{rank}"
        diff = ((activity_level - @rank)-1).abs 
        puts "The diff is: #{diff} and the progress is #{10 * diff * diff}"
        @progress += (10 * diff * diff)
      else
        puts "This was act_level minus rank triggered by the activity level of #{activity_level} and the rank of #{rank}"
        diff = (activity_level - @rank).abs
        puts "The diff is: #{diff} and the progress is #{10 * diff * diff}"
        @progress += (10 * diff * diff)
    end

    end
    # how to ignore zero rank?
    rank_up_or_not
    if @rank == 8
      @progress = 0 
    end
     puts "rank is #{@rank} and progress is #{@progress}"
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
