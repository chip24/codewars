def domain_name(url)
  #url.scan(/\/\/(.*)\//)[0]
  #url.scan(?<=\/\/).*?(?=\/)
  #url.scan(/\/\//(\w*)\//)
# on 7/1 figure out how to match the first occurence of a period and not the last
  #domain = url.scan(%r{//(.*)\.})[0][0]
  #domain = url.scan(%r{//[^.]})
  if url.include?("www")
    puts url
    domain = url.scan(/(?<=www\.).+?(?=\.)/)[0]
    puts domain
    puts domain.class
    puts "handled with IF"
  elsif url.include?("//")
    puts url
    domain = url.scan(/(?<=\/\/).+?(?=\.)/)[0]
    #.gsub("www.","").gsub(".co","")
    puts domain
    puts domain.class
    puts "handled with ELSIF"
  
  else
    puts url
    domain = url.scan(/.+?(?=\.)/)[0]
    puts domain
    puts domain.class
    puts "handled with ELSE"
  end
  #p domain
  #.gsub("www.", "")
  #p domain
  #domain.gsub("www.", "")
end

# below are two other solutions from Codewars that are simpler

#def domain_name(url)
#  URI.parse(url).host.split('.').last(2)[0]
#end

#def domain_name(url)
#  url.gsub!('http://', '')
#  url.gsub!('https://', '')
#  url.gsub!('www.', '')
#  url.split(".")[0]
#end

puts domain_name("http://github.com/carbonfive/raygun")
puts domain_name("http://www.zombie-bites.com")
puts domain_name("https://www.cnet.com")
puts domain_name("http://google.co.jp")
puts domain_name("http://google.com")
puts domain_name("www.xakep.ru")
puts domain_name("https://youtube.com")
puts domain_name("icann.org")
puts domain_name("https://41sf9prop7qhe5cmizrf9arorze0.net/default.html")
puts domain_name("4vnw188ql4hddmmp.co.uk/error")
puts domain_name("http://dela7hcas8.org/default.html")
puts domain_name("1bdg043afozszqqr5c5mj2vv8.br/index.php")
puts domain_name("glb2zx9ansvnohcfh6t7.co.uk/users")
puts domain_name("http://5w4k5ilwsmysuvc32.tv/default.html")
puts domain_name("xmxru9q0nvrcc2fnefda.com/default.html")
puts domain_name("8j0h7q7uche.fr/default.html")
puts domain_name("zs0lx0sal76o89csklayq7lc.co.za/img/")
puts domain_name("http://www.as4rz1g2navt1bdp.name/default.html")
puts domain_name("http://tsafx.jp/default.html")


