# My code was ranked 8 out of 260, but I could have made it just one line if I had used 'list.any? { | i | i[:language] == 'Ruby' }' or 'list.to_s.include?"Ruby"' 

def is_ruby_coming(list)
  list.each do |hash|
    hash.each do |k,v|
      return true if v == 'Ruby'
    end
  end
  false
end

list1 = [
  { first_name: 'Emma', last_name: 'Z.', country: 'Netherlands', continent: 'Europe', age: 29, language: 'Ruby' },
  { first_name: 'Piotr', last_name: 'B.', country: 'Poland', continent: 'Europe', age: 128, language: 'Javascript' },
  { first_name: 'Jayden', last_name: 'P.', country: 'Jamaica', continent: 'Americas', age: 42, language: 'JavaScript' }
]

p is_ruby_coming(list1)

# On 4-29, figure out how to work with the array of hashes.