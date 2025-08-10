# This code was ranked 8 out of 425 (and holiday_shopping_priority_queue2 moved down to 9th).  I used Copilot to help me reconfigure the buyGift method to return the gift name and not the length and I copied that whole code into holiday_shopping_priority_queue2 and submitted it first. Then I just rearranged my buyGift method (and kept everything else in the class as is) to have first_value at the end and it worked. 



class HolidayPriorityQueue
  def initialize
    @priority_queue = [].sort_by {|h| h["priority"]}
    @length = 0
  end
  
  def addGift(gift)
    #Insert gift into priority queue and return new length
    @priority_queue << gift 
    @length += 1
  end
  
  def buyGift
    #Return gift with highest priority (lowest integer value)
    return '' if @priority_queue.empty?

    sorted_queue = @priority_queue.sort_by {|h| h["priority"]}
    
    first_value = sorted_queue[0].values.first

    @priority_queue.delete_if {|hash| hash["gift"] == first_value}
    @length -= 1
    first_value

  end

 end

 # on 7-18 figure out how to get buyGift to return the name of the gift and not @length

 # on 7-18 finish troubleshooting Render - find out about port

list = HolidayPriorityQueue.new
list.addGift({ 'gift' => 'Water gun', 'priority' => 1 })
list.addGift({ 'gift' => 'Toy truck', 'priority' => 4 } )
list.addGift({ 'gift' => 'Roller Skates', 'priority' => 3 } )

list.buyGift

p list

=begin
length = 0

Test.assert_equals(giftList.buyGift(), '')

length = giftList.addGift( { 'gift' => 'Water gun', 'priority' => 1 } )
Test.assert_equals(length, 1, 'Incorrect queue length')
Test.assert_equals(giftList.buyGift(), 'Water gun')
=end