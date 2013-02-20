# awfully slow, pretty naive solution

num_s = ""
(1..1000000).each { |x| num_s += x.to_s }

res = 1
[0, 9, 99, 999, 9999, 99999, 999999].each { |x| res *= num_s[x].to_i }

p res
