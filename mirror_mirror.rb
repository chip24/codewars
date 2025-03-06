# I submitted mirror_two and it was ranked 6 out of 118.  I didn't use any kind of help at all.


def mirror(data)
  p sorted_data = data.sort
  p data_copy = data.sort.reverse[1..-1]
  p sorted_data + data_copy
end

p mirror([-8, 42, 18, 0, -16])

def mirror_two(data)
  data.sort + data.sort.reverse[1..-1]
end

p mirror_two([-8, 42, 18, 0, -16])
