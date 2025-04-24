# My code was ranked 72 out of 165, but the ONLY difference between my code and the top code was that I used "find_index" and the top code used "index".  Most of the code between 1 and 72 seemed convoluted.  So weird.  I "trained again" and switched the new code to "index".

def oddball(arr)
  # odd_idx = x.find_index("odd")
  # x.include?(odd_idx)
  # x.include?(x.find_index("odd")) <-- first submitted
  arr.include?(arr.index("odd"))
end

p oddball(["even", 9, "even", 88, "even", 777, "even", 10, "odd", 8, "even"])