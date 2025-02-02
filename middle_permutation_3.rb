#I submitted this code to CodeWars.  I wrote a brute force code in a few minutes that worked, but it took forever for strings longer than about 10 or 12 characters. I ended up finding some Python code and converting it to Ruby using Pilot. I've pasted the top answer below with its author's notes.



=begin
Turns out that for odd length strings, the answer is the reverse of the sorted string with the
characters at indices length/2 and length/2+1 shifted to the front.  Same goes for even numbers,
except even numbers it's only the character at length/2 that gets shifted to the front.

The length/2 and length/2+1 are indices of the string that has already been sorted and reversed. #END OF AUTHOR'S NOTES

def middle_permutation(string)

a = string.split("").sort.reverse
l = a.length
answer = []

if a.length.odd?
  2.times {answer << a.delete_at(l/2)}
  answer << a
  return answer.join
else
  answer << a.delete_at(l/2)
  answer << a
  return answer.join
end

end
=end

def middle_permutation(string)
  ans = ""
  tmp = string.chars.sort
  dividend = (1..tmp.length).reduce(:*) / 2 - 1

  tmp.length.times do
    perms = (1..tmp.length).reduce(:*) / tmp.length
    if tmp.length == 1
      ans += tmp[0]
      break
    end
    letter = tmp[dividend / perms]
    ans += letter
    tmp.delete_at(dividend / perms)
    dividend -= perms * (dividend / perms)
  end

  ans
end


# Example usage
puts middle_permutation("abc")    # Expected output: "cedba"
puts middle_permutation("abcd")   # Expected output: "cfedba"
puts middle_permutation("abcdx") # Should start with "e" and end with "a"
puts middle_permutation("abcdxg")
puts middle_permutation("abcdxgz")

