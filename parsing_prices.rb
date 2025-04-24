# My code was rated 7 out of 137.

class String
  def to_cents
    if self =~ /\A\$\d+\.\d{2}\z/
      self.delete('$').delete('.').to_i
    end
  end
end

p "1".to_cents
p  "1.23".to_cents
p  "$1".to_cents
p  "$1.23".to_cents
p  "$99.99".to_cents
p  "$12345678.90".to_cents

# on 4-19, figure out how to return the number of cents if the regex matches

