def DNA_strand(dna)
  dna_arr = dna.chars
  #p dna_arr
  complementary_arr = []
  dna_arr.each do |elem|
    if elem == "A"
      complementary_arr << "T"
    elsif elem == "T"
      complementary_arr << "A"
    elsif elem == "G"
      complementary_arr << "C"
    else
      complementary_arr << "G"
    end
  end
  #p complementary_arr
  comp_str = complementary_arr.join
  #p comp_str
  comp_str

end

DNA_strand("ATTGC")
DNA_strand("GTAT")