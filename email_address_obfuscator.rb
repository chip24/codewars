# My code was ranked 100 out of 231 even though the top ranked code was very similiar.  Odd.  21 other people submitted the same code as me.

def obfuscate(email)
  email.gsub("@", " [at] ").gsub(".", " [dot] ")
end

p obfuscate('Code_warrior@foo.ac.uk')

