hash_res = {}

def is_right?(x, y, z)
  x**2 + y**2 == z**2
end

(1..1000).each do |x|
  (1..1000).each do |y|
    break if x + y > 1000
    (1..1000).each do |z|
      perimeter = x+y+z
      break if perimeter > 1000
      next unless is_right?(x, y, z)
      if hash_res[perimeter]
        hash_res[perimeter] += 1
      else
        hash_res[perimeter] = 1
      end
    end
  end
end

perims = []

hash_res.each do |k,v|
  perims << v
end

p hash_res.key(perims.max)

