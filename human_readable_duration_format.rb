require 'active_support/all'

# my solution seemed better or as good as the top rated solutions on Codewars

def format_duration(seconds)
  # seconds in a year = 31,536,000
  # seconds in a day = 86,400
  if seconds == 0
    return "now"
  end


  years = seconds.divmod(31_536_000)
  p years
  days = years[1].divmod(86_400)
  p days
  hours = days[1].divmod(3600)
  p hours
  minutes = hours[1].divmod(60)
  p minutes
  secs = minutes[1]
  p seconds
  time_hash = Hash["year", years[0], "day", days[0], "hour", hours[0], "minute", minutes[0], "second", secs]
  p time_hash
  time_array =[]
  time_hash.each do |key, value|
    if value == 0
      next
    elsif value == 1
      time_array << "1 " + key
    else
      time_array << value.to_s + " " + key + "s"
    end
  end
  #p time_array.join(", ")
  p time_array.to_sentence(:last_word_connector => " and ")
  # on 7-17 find out how to return "now" if there are 0 seconds probably by adding an elsif or else statement

end

format_duration(1_000_000_000)
format_duration(400_000)
format_duration(901)
puts format_duration(0)