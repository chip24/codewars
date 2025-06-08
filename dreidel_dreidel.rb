 # My code was ranked 2 out of 66.  I only needed help from Copilot for finding how to divide integers into integers and not floats.  I resubmitted gamble2 and it became ranked 2nd and gamble became third. 

def gamble(rolls, my_coins, pot)

  def split_integer(n)
    a = n / 2
    b = n - a
    return a, b
  end

  rolls.each do |roll|
    if roll == "Gimel"
      my_coins += pot
      pot = 0 
    elsif roll == "Hei"
      my_share, pot_share = split_integer(pot)
      my_coins += my_share
      pot -= my_share
    elsif roll == "Shin"
      my_coins -= 1
      pot += 1
    end
  end
  my_coins
end

# on 5-27 figure out how to get divmod method to work

#p gamble(['Nun'], 10, 20)#.to eq(10)
#p gamble(['Gimel'], 10, 20)#.to eq(30)
#p gamble(['Hei', 'Shin'], 10, 20)#.to eq(19)
#p gamble(['Hei', 'Hei'], 10, 20)#.to eq(25)
#p gamble(['Hei', 'Hei', 'Hei'], 10, 20)#.to eq(27)
#p gamble(['Nun', 'Nun', 'Shin', 'Gimel'], 10, 20)#.to eq(30)
#p gamble(['Shin', 'Shin', 'Hei'], 10, 20)#.to eq(19)
#p gamble(['Shin', 'Shin'], 1, 20)#.to eq(-1)
#p gamble(['Shin', 'Shin', 'Hei'], 1, 20)#.to eq(10)

def gamble2(rolls, my_coins, pot)
  rolls.each do |roll|
    if roll == "Gimel"
      my_coins += pot
      pot = 0 
    elsif roll == "Hei"
      my_share = pot/2
      my_coins += my_share
      pot -= my_share
    elsif roll == "Shin"
      my_coins -= 1
      pot += 1
    end
  end
  my_coins
end

p gamble2(['Nun'], 10, 20)#.to eq(10)
p gamble2(['Gimel'], 10, 20)#.to eq(30)
p gamble2(['Hei', 'Shin'], 10, 20)#.to eq(19)
p gamble2(['Hei', 'Hei'], 10, 20)#.to eq(25)
p gamble2(['Hei', 'Hei', 'Hei'], 10, 20)#.to eq(27)
p gamble2(['Nun', 'Nun', 'Shin', 'Gimel'], 10, 20)#.to eq(30)
p gamble2(['Shin', 'Shin', 'Hei'], 10, 20)#.to eq(19)
p gamble2(['Shin', 'Shin'], 1, 20)#.to eq(-1)
p gamble2(['Shin', 'Shin', 'Hei'], 1, 20)#.to eq(10)

