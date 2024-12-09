def hamming(n)
  hamming_arr = [1]
  int = 2
  until hamming_arr.length >= n 
    if int % 2 == 0 || int % 3 == 0 || int % 5 == 0
      hamming_arr << int
    end
    int += 1
  end
  p hamming_arr
end

p hamming(34)

#first 34 Hamming numbers
hammings = [1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 25, 27, 30, 32, 36, 40, 45, 48, 50, 54, 60, 64, 72, 75, 80, 81, 90, 96, 100]
