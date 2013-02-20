p (1..1000).map { |x| x**x }.reduce(:+).to_s.split('')[(-10..-1)].reduce(:+).to_i
