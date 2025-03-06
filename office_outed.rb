#My code was ranked 8 out of 295. I only used AI to figure out that I needed to convert the string to a symbol with .to_sym.

def outed(meet, boss)

  if meet.has_key?(boss.to_sym)
    meet[boss.to_sym] *= 2
  end

  if meet.values.sum / meet.length <= 5
    "Get Out Now!"
  else
    "Nice Work Champ!"
  end

end

# on 2-13 find out how to match "laura" in the has_key? part
p outed({"tim":0, "jim":2, "randy":0, "sandy":7, "andy":0, "katie":5, "laura":1, "saajid":2, "alex":3, "john":2, "mr":0}, "laura")
p outed({"tim":1, "jim":3, "randy":9, "sandy":6, "andy":7, "katie":6, "laura":9, "saajid":9, "alex":9, "john":9, "mr":8}, "katie")
p outed({"tim":2, "jim":4, "randy":0, "sandy":5, "andy":8, "katie":6, "laura":2, "saajid":2, "alex":3, "john":2, "mr":8}, "john")
