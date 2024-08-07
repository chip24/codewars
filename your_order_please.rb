#I used Copilot to help.  It told me how to use the sort_by section of the function

def order(words)
  words.split.sort_by { |word| word[/\d+/].to_i}.join(' ')
end
# on 8-2 figure out how to reverse the sorted letters and join them probably using sort_by
p order("is2 Thi1s T4est 3a")