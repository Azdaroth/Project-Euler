def prime?(number)
	result = 0
	(2...number).each do |x|
		result += x if number % x == 0
	end

	return true if result == 0
end

prime_factors = [1]

x = 2
while true
		prime_factors.push(x) if prime?(x) and 600851475143 % x == 0  
		x += 1
		break if prime_factors.reduce(:*) == 600851475143
end

puts prime_factors.last


