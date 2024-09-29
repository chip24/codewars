# The the top Codewars answer was similar to mine but used "!!", which coverts a value to a Boolean

def validPhoneNumber(phoneNumber)
  phone_num_regex = /^\([\d]{3}\)\s[\d]{3}-[\d]{4}$/
  phoneNumber =~ (phone_num_regex) ? true : false
end

p validPhoneNumber("(123) 456-7890")
p validPhoneNumber("(1111) 456 7890")
p validPhoneNumber("(098) 456 7890")

