# real  13m59.275s
# user  13m59.264s
# sys 0m0.004s

def res_ok?(x)
  x.to_i == x
end

def is_hexagonal?(x)
  delta_sqrt = (1 + 24*x)**(0.5)
  res_ok?(delta_sqrt) and res_ok?(res = (1 + delta_sqrt) / 6)
end

def is_pentagonal?(x)
  delta_sqrt = (1 + 8*x)**(0.5)
  res_ok?(delta_sqrt) and res_ok?(res = (1 + delta_sqrt) / 4)
end

def get_triple
  triple = []
  i = 40756
  while true
    triple << i if (is_pentagonal?(i) and is_hexagonal?(i))
    break if triple.count == 1
    i += 1
  end
  triple
end

p get_triple
