# My gifts code was ranked 7 my gifting code was ranked 8 out of 88.  I Googled to remember how to reverse a hash and how to sort an array alphabetically. 

def gifting(number)
  @GIFTS = {
    1 => 'Toy Soldier',
    2 => 'Wooden Train',
    4 => 'Hoop',
    8 => 'Chess Board',
   16 => 'Horse',
   32 => 'Teddy',
   64 => 'Lego',
  128 => 'Football',
  256 => 'Doll',
  512 => "Rubik's Cube"
}
  reversed_gifts = @GIFTS.to_a.reverse.to_h
  toys = []

  until number == 0 do
    reversed_gifts.each do |key, val|
    if key <= number
      toys << reversed_gifts[key]
      number -= key
    end
    end
  end

  toys.sort
end

#p gifting(1)# ['Toy Soldier'])
#p gifting(2)#['Wooden Train'])
#p gifting(3)# ['Toy Soldier', 'Wooden Train'])
p gifting(22)# ['Hoop', 'Horse', 'Wooden Train'])
p gifting(160)# ['Football', 'Teddy'])

def gifts(number)
  reversed_gifts = GIFTS.to_a.reverse.to_h
  toys = []

  until number == 0 do
    reversed_gifts.each do |key, val|
      if key <= number
        toys << reversed_gifts[key]
        number -= key
      end
    end
  end

  toys.sort
end