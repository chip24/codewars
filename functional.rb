states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << state.downcase.split.join("-")
  end
  urls 
end

p imperative_urls(states)

def functional_urls2(states)
  states.map {|state| state.downcase.split.join("-")}
end

p functional_urls2(states)

def urlify(string)
  string.downcase.split.join('-')
end

def imperative_urls3(states)
  urls = []
  states.each do |state| 
    urls << urlify(state)
  end
  urls
end

p imperative_urls3(states)

def imperative_urls4(states)
  states.map { |state| urlify(state)}
end

p imperative_urls4(states)

def url_form(states)
  states.map {|state| "https://example.com/" + "#{urlify(state)}"}
end

p url_form(states)


