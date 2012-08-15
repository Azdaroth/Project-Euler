arr = (0..9).to_a.permutation.to_a.map { |x| x.join('').to_s }.sort

puts arr[999999]

