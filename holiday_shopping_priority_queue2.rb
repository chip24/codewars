# This code was ranked 8 out of 425.  I used Copilot to help me reconfigure the buyGift method to return the gift name and not the length.


class HolidayPriorityQueue
  def initialize
    @priority_queue = []
    @length = 0
  end

  def addGift(gift)
    @priority_queue << gift
    @length += 1
    @length
  end

  def buyGift
    return '' if @priority_queue.empty?

    # Find the gift with the lowest priority
    gift_hash = @priority_queue.min_by { |h| h["priority"] }
    gift_name = gift_hash["gift"]

    # Remove the gift and update length
    @priority_queue.delete(gift_hash)
    @length -= 1

    gift_name
  end
end

list = HolidayPriorityQueue.new
list.addGift({ 'gift' => 'Water gun', 'priority' => 1 })
list.addGift({ 'gift' => 'Toy truck', 'priority' => 4 } )
list.addGift({ 'gift' => 'Roller Skates', 'priority' => 3 } )

list.buyGift

p list