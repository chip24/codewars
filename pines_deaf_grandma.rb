# My code was ranked 4 out of 128.  I needed no help.

def deaf_grandma(you)
  grandma_arr = []
  you.each do |reply| 
    if reply == "BYE"
      grandma_arr << "OK, BYE!"
      break
    elsif reply != reply.upcase 
      grandma_arr << "HUH?! SPEAK UP, SONNY!"
    else
      grandma_arr << "NO, NOT SINCE 1938!"
    end
  end
  grandma_arr
end

p deaf_grandma(['hi grandma', 'WHAT', 'bye', 'BYE']) # ["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!", "OK, BYE!"])

p deaf_grandma(['BYE']) # ["OK, BYE!"])

p deaf_grandma(['HELLO', 'OK, BYE', 'BYE'])#["NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"])

p deaf_grandma(['Bye', 'OK, BYE', 'OK, BYE', 'BUY', "BYE", "BYE"])#["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"],
  #'The conversation is over once you shout bye.')

p deaf_grandma(['Bye?', 'BYE!', 'BYE.', 'BYE'])#["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "NO, NOT SINCE 1938!", "OK, BYE!"],
  #'Should work with symbols')

p deaf_grandma(['BYE8', "1 Ok, Bye!", 'BYE'])#["NO, NOT SINCE 1938!", "HUH?! SPEAK UP, SONNY!", "OK, BYE!"],
  #'Should work with numbers')

p deaf_grandma(["good morning", "NICE TO SEE YOU", "BYE", "oh, I forgot", "nevermind", "see you"])#["HUH?! SPEAK UP, SONNY!", "NO, NOT SINCE 1938!", "OK, BYE!"])

