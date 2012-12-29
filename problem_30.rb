numbers = []
 
# exclude 1, according to the content 
(2..1000000).each do |i| # 1000000 is enough
  local_numbers = []
  nums = i.to_s.split('').map { |x| x.to_i }
  nums.each { |x| local_numbers << x**5 }
  numbers << i if local_numbers.reduce(:+) == i
end

puts numbers.reduce(:+)
