#After I refactored prime_factors into prime_factors2, my answer was very similar to the top CodeWars answer.

require 'prime'

def prime_factors(n)
  fac_arr = Prime.prime_division(n)
  format_arr = []
  fac_arr.each do |arr|
     if arr[1] == 1
      format_arr << "(#{arr[0]})"
    else
      format_arr << "(#{arr[0]}**#{arr[1]})"
    end
  end
    format_arr.join
end

p prime_factors(86240)
p prime_factors(7775460)

def prime_factors2(n)
  Prime.prime_division(n).map {|arr| arr[1] == 1 ? "(#{arr[0]})" : "(#{arr[0]}**#{arr[1]})"}.join
end

p prime_factors2(86240)
p prime_factors2(7775460)