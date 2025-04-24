#My code was ranked 7 out of 121 even though it was identical to the top ranked code except for different spacing.

def task(w,n,c)
  worker_hash = {
    "Monday" => "James", "Tuesday" => "John", "Wednesday" => "Robert", "Thursday" => "Michael", "Friday" => "William"
  }

  "It is #{w} today, #{worker_hash[w]}, you have to work, you must spray #{n} trees and you need #{n*c} dollars to buy liquid"
end

p task('Wednesday',10,2)