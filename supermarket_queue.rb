def queue_time(customers, n)
  tills = Array.new(n) {[]}

  customers.each do |customer|
    p tills.min_by(&:sum) << customer
  end
  tills.map(&:sum).max

end

p queue_time([5,3,4], 1)
p queue_time([10,2,3,3], 2)
p queue_time([2,3,10], 2)