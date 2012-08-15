numbers_1 = []
(1..100).each do |x|
 numbers_1.push(x**2)
end

numbers_2 = (1..100).reduce(:+)

result = numbers_1.reduce(:+) - numbers_2**2

puts result