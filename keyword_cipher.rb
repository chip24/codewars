# My code was ranked 9 out of 103.  I only Googled to remember the #delete method and the #tr method.  The top code was shorter and more straightforward:
#def keyword_cipher(string, keyword)
#  alpha ="abcdefghijklmnopqrstuvwxyz"
#  cipher= (keyword+alpha).chars.uniq.join
#  string.downcase.tr(alpha, cipher)
#end

def keyword_cipher(string, keyword)
  alpha_arr = ('a'..'z').to_a
  alpha_str  = ('a'..'z').to_a.join
  keyword_arr = keyword.delete(" ").downcase.chars.uniq

  alpha_arr.each do |ltr|
    if !keyword_arr.include?(ltr)
      keyword_arr << ltr
      end
    end

  enc_str = keyword_arr.join
  string.downcase.tr(alpha_str, enc_str)
end

p keyword_cipher("Welcome home", "secret")# "wticljt dljt")
#p keyword_cipher("hello", "wednesday")# "bshhk")
#p keyword_cipher("HELLO", "wednesday")# "bshhk")
#p keyword_cipher("HeLlO", "wednesday")# "bshhk")
#p keyword_cipher("WELCOME HOME", "gridlocked")# "wlfimhl kmhl")
#p keyword_cipher("alpha bravo charlie", "delta")# "djofd eqdvn lfdqjga")
#p keyword_cipher("Home Base", "seven")# "dlja esqa")
#p keyword_cipher("basecamp", "covert")# "ocprvcil")
#p keyword_cipher("one two three", "rails")# "mks twm tdpss")
#p keyword_cipher("Test", "unbuntu")# "raqr")